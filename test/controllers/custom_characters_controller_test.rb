require "test_helper"

class CustomCharactersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_character = custom_characters(:one)
  end

  test "should get index" do
    get custom_characters_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_character_url
    assert_response :success
  end

  test "should create custom_character" do
    assert_difference("CustomCharacter.count") do
      post custom_characters_url, params: { custom_character: { name: @custom_character.name, powers: @custom_character.powers } }
    end

    assert_redirected_to custom_character_url(CustomCharacter.last)
  end

  test "should show custom_character" do
    get custom_character_url(@custom_character)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_character_url(@custom_character)
    assert_response :success
  end

  test "should update custom_character" do
    patch custom_character_url(@custom_character), params: { custom_character: { name: @custom_character.name, powers: @custom_character.powers } }
    assert_redirected_to custom_character_url(@custom_character)
  end

  test "should destroy custom_character" do
    assert_difference("CustomCharacter.count", -1) do
      delete custom_character_url(@custom_character)
    end

    assert_redirected_to custom_characters_url
  end
end
