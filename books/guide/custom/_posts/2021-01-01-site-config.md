---
title: Custom config
summary: Indicate which configuration can be customized. (update with features)
pin: true
order: 2
---

## site config 

path | type of config | name | type of date | mean | default
--   | ---            | ---  | ---          | ---  | ---
`_data/site.yml` | | `logo.sm` | url | small logo of the site | `site.logo`
`_data/site.yml` | | `logo.md` | url | medium logo of the site | `site.image`
`_data/site.yml` | | `src[{index}].platform` | string | define site source platform.<br>the button "view on xxx" in each post will referrent the first platform src | `GitHub`
`_data/site.yml` | | `src[{index}].url`      | string | define site source url. | ==require==
`_data/site.yml` | | `src[{index}].branch`   | string | define site source branch. | `nil`

## nav config

path | type of config | name | type of date | mean | default
--   | ---            | ---  | ---          | ---  | ---
`_navs/{nav_name}.md` | front matter | `order`  | integer | define the order that determines the priority of the display in top navbar.
`_navs/{nav_name}.md` | front matter | `layout` | string  | define the layout of page. <br> (layouts was defined in `_layouts/`) |  `page`

## book config 

path | type of config | name | type of date | mean | default
--   | ---            | ---  | ---          | ---  | ---
`_data/books.yml` | | `{book_name}`                        | string | define book name. then you will see the name in 'books' page. | `nil`
`_data/books.yml` | | `{book_name}.image`                  | string | define book image. | `site.books.image`
`_data/books.yml` | | `{book_name}.description`            | string | define book description. | `site.books.description`
`_data/books.yml` | | `{book_name}.enter`                  | string | define book enter url. pattern: `{topic}/{post_name}` | the url of first post in first topic
`_data/books.yml` | | `{book_name}.icon`                 | string | define book icon. | `nil`
`_config.yml`     | | `site.books_icons`                 | array  | define a series of default icons for book's topic | `nil`
`_data/books.yml` | | `{book_name}.doc_icon`             | string | define the default icon of this book's topics. if `none` icon don't display. | `site.books_icons`
`_data/books.yml` | | `{book_name}.docs[{index}].icon`   | string | define book icon. if `none` icon don't display. | `./{doc_icon}`
`_data/books.yml` | | `{book_name}.docs[{index}].name`       | string | define the name of book's topic. | `./{category_id}`
`_data/books.yml` | | `{book_name}.docs[{index}].category`   | string | define the id of book's topic. |  ==required==

## post config 

path | type of config | name | type of date | mean | default
--   | ---            | ---  | ---          | ---  | ---
`books/{book_name}/{topic_name}/{publish_date}-{post_name}.md` | front matter | `pin`         | boolean | if `true` the post will be pined at top in post list. | `false`
`books/{book_name}/{topic_name}/{publish_date}-{post_name}.md` | front matter | `pin_order`   | integer | sort pined posts according to the order from low to high. if order is nil the post will be queued last and display in the order of published data. | `999`
`books/{book_name}/{topic_name}/{publish_date}-{post_name}.md` | front matter | `order`       | integer | sort posts according to the order from low to high. if order is nil the post will be queued last and display in the order of published data. | `nil`
`books/{book_name}/{topic_name}/{publish_date}-{post_name}.md` | front matter | `summary`     | string | a post summary that will display below the title in post page. | `nil`
`books/{book_name}/{topic_name}/{publish_date}-{post_name}.md` | front matter | `author`      | string | indicate the author of this post. it will reference the file `_data/authros.yml` by name. | `site.default.{post scope}.author`
`books/{book_name}/{topic_name}/{publish_date}-{post_name}.md` | front matter | `tags`        | array | define a tag list that will help us to find this post in some where. | `nil`
`books/{book_name}/{topic_name}/{publish_date}-{post_name}.md` | front matter | `post_id`     | string | if want to referent a post in site, you can add this in the post you want to referent <br>and referent it by `{% raw %}{% include tools/post_url_in_site.liquid post_id='HOW_TO_ADD_A_BOOK' %}{% endraw %}`. then you will get a url you want. | `nil`
