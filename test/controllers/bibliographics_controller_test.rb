require 'test_helper'

class BibliographicsControllerTest < ActionController::TestCase
  setup do
    @bibliographic = bibliographics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bibliographics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bibliographic" do
    assert_difference('Bibliographic.count') do
      post :create, bibliographic: { author: @bibliographic.author, book: @bibliographic.book, doi: @bibliographic.doi, month: @bibliographic.month, number: @bibliographic.number, page: @bibliographic.page, publisher: @bibliographic.publisher, source: @bibliographic.source, title: @bibliographic.title, year: @bibliographic.year }
    end

    assert_redirected_to bibliographic_path(assigns(:bibliographic))
  end

  test "should show bibliographic" do
    get :show, id: @bibliographic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bibliographic
    assert_response :success
  end

  test "should update bibliographic" do
    patch :update, id: @bibliographic, bibliographic: { author: @bibliographic.author, book: @bibliographic.book, doi: @bibliographic.doi, month: @bibliographic.month, number: @bibliographic.number, page: @bibliographic.page, publisher: @bibliographic.publisher, source: @bibliographic.source, title: @bibliographic.title, year: @bibliographic.year }
    assert_redirected_to bibliographic_path(assigns(:bibliographic))
  end

  test "should destroy bibliographic" do
    assert_difference('Bibliographic.count', -1) do
      delete :destroy, id: @bibliographic
    end

    assert_redirected_to bibliographics_path
  end
end
