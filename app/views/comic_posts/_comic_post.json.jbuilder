# frozen_string_literal: true

json.extract! comic_post, :id, :title, :body, :created_at, :updated_at
json.url comic_post_url(comic_post, format: :json)
