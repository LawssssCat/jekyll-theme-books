#!/usr/bin/env ruby
#
# Check for changed posts

def set_site_data(site, book_id, key, val) 
  # site.config[book_id]['post_num'] = post_num
  book_data_list = site.data['books'] || site.data['books'] = {}
  # puts book_data_list
  book_data = book_data_list[book_id] || book_data_list[book_id] = {}
  book_data[key] = val
  puts book_data_list
end

Jekyll::Hooks.register(:site, :pre_render) do |site|

  # insert posts last modify 
  site.posts.docs.each do | post |
    # puts post.url
    commit_num = `git rev-list --count HEAD "#{ post.path }"`
    if commit_num.to_i > 0
      lastmod_date = `git log -1 --pretty="%ad" --date=iso "#{ post.path }"`
      post.data['last_modified_at'] = lastmod_date
    end
  end

  # init books data
  site.collections['books'].docs.each do | book | 
    book_id = book.url.split('/').last 
    # puts book_id
    post_num = site.categories[book_id].size

    # site.data.books.{id}.post_num
    set_site_data(site, book_id, 'post_num', post_num)

    # site.data.books.{id}.enter_url
    if post_num > 0
      enter_url = site.categories[book_id][0].url
      site.categories[book_id].each do | post | 
        if post['enter'] 
          enter_url = post.url
        end
      end
      set_site_data(site, book_id, 'enter_url', enter_url)
    end

    # site.data.books.{id}.last_modified_at
    if post_num > 0
      time_list = Array.new(post_num)
      i=0
      site.categories[book_id].each do | post | 
        time_list[i] = post['last_modified_at']
        i=i+1
      end
      time_list = time_list.compact
      time_list = time_list.sort{|a,b| b<=>a}
      last_modified_at = time_list[0]
      set_site_data(site, book_id, 'last_modified_at', last_modified_at)
    end
    
  end

end
