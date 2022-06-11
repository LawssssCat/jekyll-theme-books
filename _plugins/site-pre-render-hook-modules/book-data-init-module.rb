$logger.debug('Load Module BookData...')

class BooksData

  def get_book_icon(site)
    _icon_list = site.config['books_icons'];
    if @book_icon_num==nil or @book_icon_num >= _icon_list.size 
      @book_icon_num = 0
    end
    _icon = _icon_list[@book_icon_num]
    @book_icon_num+=1
    return _icon
  end 

  def insert_default_value(site, book_id, book_info) 
    # default value define in config 
    _config_books = site.config['books']
    if _config_books != nil 
      $logger.debug("books default config #{_config_books}")
      _config_books.each do | key, value | 
        _value = book_info[key]
        if !_value 
          book_info[key] = value
        end
      end
    end

    # default value in code logic
    if book_info['name'] == nil
      book_info['name'] = book_id
    end

    book_info['docs'].each do | doc |
      if doc['name'] == nil 
        doc['name'] = doc['category']
      end
      if doc['icon'] == nil
        doc['icon_site_apply'] = get_book_icon(site)
      end
    end

  end

  # 'front matter define' or 'longest publish post of first category'
  def insert_enter_url(site, book_id, book_info) 
    _book_enter = book_info['enter'] # {topic}/{post_name} e.g. site/guide
    _enter_url = ''
    if _book_enter
      _enter_url = "/books/#{book_id}/#{_book_enter}" 
    else 
      _first_category_info = book_info['docs'][0]
      _post_list = _first_category_info['posts']
      if _post_list != nil and _post_list.size > 0
        _enter_url = _post_list[0]['url']
      end
    end
    book_info['enter_url'] = _enter_url
    $logger.debug("enter url: #{_enter_url}")
  end

  def insert_post_info(site, book_id, book_info, book_posts) 
    book_info['docs'].each do | category_info |
      _category_id = category_info['category']
      $logger.debug(_category_id)
      # posts under book and category(topic)
      _posts = site.categories[_category_id] & book_posts
      _post_num =_posts.size
      category_info['post_num'] = _post_num

      if _post_num > 0 
        _post_list = Array.new(_post_num)
        _i=0
        _posts.each do | post | 
          _post_info = Hash.new
          $logger.debug(post.url)
          $logger.debug(post.date) # newer posts are priority
          _post_info['title'] = post.title
          _post_info['url'] = post.url
          _post_info['date'] = post.date
          _post_info['last_modified_at'] = post['last_modified_at']
          _pin = post['pin']
          _post_info['pin'] = _pin if _pin
          _order = post['order']
          _post_info['order'] = _order if _order != nil
          _post_list[_i] = _post_info
          _i=_i+1
        end
        category_info['posts'] = _post_list
      end
    end
  end

  def sort_post_in_topic(book_info)
    book_info['docs'].each do | category_info | 
      _post_list = category_info['posts']
      if _post_list != nil
        _post_list_1 = _post_list.select { | p | 
          p['order'] != nil 
        } 
        _post_list_2 = _post_list.select { | p | 
          p['order'] == nil 
        } 
        if $logger.debug? 
          $logger.debug("#{_post_list_1.size} + #{_post_list_2.size} = #{_post_list.size}")
          $logger.debug('order')
          _post_list_1.each do | post | 
            $logger.debug(post['url'])
          end
          $logger.debug('no order')
          _post_list_2.each do | post | 
            $logger.debug(post['url'])
          end
        end
        _post_list_1.sort! { | p1, p2 | p1['order'] - p2['order'] }
        _post_list_2.sort! { | p1, p2 | p1['date'] - p2['date'] }
        _post_list = _post_list_1 + _post_list_2
      end
      category_info['posts'] = _post_list
    end
  end















  def init(site) 
    # init books data
    site.data['books'].each do | book_id, book_info | 
      # insert default value
      insert_default_value(site, book_id, book_info)

      # insert post number 
      _book_posts = site.categories[book_id]
      _book_posts_num = _book_posts.size
      book_info['post_num'] = _book_posts_num

      # insert last post last_modified_at 
      if _book_posts_num > 0 
        time_list = Array.new(_book_posts_num)
        i=0
        _book_posts.each do | post | 
          time_list[i] = post['last_modified_at']
          i=i+1
        end
        time_list = time_list.compact
        time_list = time_list.sort{|a,b| b<=>a}
        last_modified_at = time_list[0]
        book_info['last_modified_at'] = last_modified_at
      end

      # insert post url
      insert_post_info(site, book_id, book_info, _book_posts)

      # sort post in a topic( category#2 )
      sort_post_in_topic(book_info)

      # need to sort first ==================================================

      # insert enter url. 
      insert_enter_url(site, book_id, book_info)
    end # end 'books' each 

    # debug. info show in console.
    if $logger.debug? 
      _i=1
      site.data['books'].each do | book_id, book_info | 
        $logger.debug(_i)
        $logger.debug(book_info)
        _i=_i+1
      end
    end

  end # init end

end