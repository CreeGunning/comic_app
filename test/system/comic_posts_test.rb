# frozen_string_literal: true

require 'application_system_test_case'

class ComicPostsTest < ApplicationSystemTestCase
  setup do
    @comic_post = comic_posts(:one)
  end

  test 'visiting the index' do
    visit comic_posts_url
    assert_selector 'h1', text: 'Comic posts'
  end

  test 'should create comic post' do
    visit comic_posts_url
    click_on 'New comic post'

    fill_in 'Body', with: @comic_post.body
    fill_in 'Title', with: @comic_post.title
    click_on 'Create Comic post'

    assert_text 'Comic post was successfully created'
    click_on 'Back'
  end

  test 'should update Comic post' do
    visit comic_post_url(@comic_post)
    click_on 'Edit this comic post', match: :first

    fill_in 'Body', with: @comic_post.body
    fill_in 'Title', with: @comic_post.title
    click_on 'Update Comic post'

    assert_text 'Comic post was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Comic post' do
    visit comic_post_url(@comic_post)
    click_on 'Destroy this comic post', match: :first

    assert_text 'Comic post was successfully destroyed'
  end
end
