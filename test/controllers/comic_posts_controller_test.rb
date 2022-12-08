# frozen_string_literal: true

require 'test_helper'

class ComicPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comic_post = comic_posts(:one)
  end

  test 'should get index' do
    get comic_posts_url
    assert_response :success
  end

  test 'should get new' do
    get new_comic_post_url
    assert_response :success
  end

  test 'should create comic_post' do
    assert_difference('ComicPost.count') do
      post comic_posts_url, params: { comic_post: { body: @comic_post.body, title: @comic_post.title } }
    end

    assert_redirected_to comic_post_url(ComicPost.last)
  end

  test 'should show comic_post' do
    get comic_post_url(@comic_post)
    assert_response :success
  end

  test 'should get edit' do
    get edit_comic_post_url(@comic_post)
    assert_response :success
  end

  test 'should update comic_post' do
    patch comic_post_url(@comic_post), params: { comic_post: { body: @comic_post.body, title: @comic_post.title } }
    assert_redirected_to comic_post_url(@comic_post)
  end

  test 'should destroy comic_post' do
    assert_difference('ComicPost.count', -1) do
      delete comic_post_url(@comic_post)
    end

    assert_redirected_to comic_posts_url
  end
end
