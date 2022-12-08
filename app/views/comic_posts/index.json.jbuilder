# frozen_string_literal: true

json.array! @comic_posts, partial: 'comic_posts/comic_post', as: :comic_post
