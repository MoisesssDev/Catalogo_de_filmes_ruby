require "test_helper"

class FilmGenresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @film_genre = film_genres(:one)
  end

  test "should get index" do
    get film_genres_url
    assert_response :success
  end

  test "should get new" do
    get new_film_genre_url
    assert_response :success
  end

  test "should create film_genre" do
    assert_difference("FilmGenre.count") do
      post film_genres_url, params: { film_genre: { name: @film_genre.name } }
    end

    assert_redirected_to film_genre_url(FilmGenre.last)
  end

  test "should show film_genre" do
    get film_genre_url(@film_genre)
    assert_response :success
  end

  test "should get edit" do
    get edit_film_genre_url(@film_genre)
    assert_response :success
  end

  test "should update film_genre" do
    patch film_genre_url(@film_genre), params: { film_genre: { name: @film_genre.name } }
    assert_redirected_to film_genre_url(@film_genre)
  end

  test "should destroy film_genre" do
    assert_difference("FilmGenre.count", -1) do
      delete film_genre_url(@film_genre)
    end

    assert_redirected_to film_genres_url
  end
end
