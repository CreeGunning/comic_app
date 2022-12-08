# frozen_string_literal: true

require 'application_system_test_case'

class CustomCharactersTest < ApplicationSystemTestCase
  setup do
    @custom_character = custom_characters(:one)
  end

  test 'visiting the index' do
    visit custom_characters_url
    assert_selector 'h1', text: 'Custom characters'
  end

  test 'should create custom character' do
    visit custom_characters_url
    click_on 'New custom character'

    fill_in 'Name', with: @custom_character.name
    fill_in 'Powers', with: @custom_character.powers
    click_on 'Create Custom character'

    assert_text 'Custom character was successfully created'
    click_on 'Back'
  end

  test 'should update Custom character' do
    visit custom_character_url(@custom_character)
    click_on 'Edit this custom character', match: :first

    fill_in 'Name', with: @custom_character.name
    fill_in 'Powers', with: @custom_character.powers
    click_on 'Update Custom character'

    assert_text 'Custom character was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Custom character' do
    visit custom_character_url(@custom_character)
    click_on 'Destroy this custom character', match: :first

    assert_text 'Custom character was successfully destroyed'
  end
end
