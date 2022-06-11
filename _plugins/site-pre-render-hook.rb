#!/usr/bin/env ruby
#
# Check for changed posts

Jekyll::Hooks.register(:site, :pre_render) do |site|

  SiteData.new.init(site)

  # insert posts last modify 
  site.posts.docs.each do | post |
    # puts post.url
    commit_num = `git rev-list --count HEAD "#{ post.path }"`
    if commit_num.to_i > 0
      lastmod_date = `git log -1 --pretty="%ad" --date=iso "#{ post.path }"`
      post.data['last_modified_at'] = lastmod_date
    end
  end

  # init site.data.books
  BooksData.new.init(site)

end
