class FilmGenresController < ApplicationController
  before_action :set_film_genre, only: %i[ show edit update destroy ]

  # GET /film_genres
  def index
    @film_genres = FilmGenre.all
  end

  # GET /film_genres/1
  def show
  end

  # GET /film_genres/new
  def new
    @film_genre = FilmGenre.new
  end

  # GET /film_genres/1/edit
  def edit
  end

  # POST /film_genres
  def create
    @film_genre = FilmGenre.new(film_genre_params)

    if @film_genre.save
      redirect_to @film_genre, notice: "Film genre was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /film_genres/1
  def update
    if @film_genre.update(film_genre_params)
      redirect_to @film_genre, notice: "Film genre was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /film_genres/1
  def destroy
    @film_genre.destroy
    redirect_to film_genres_url, notice: "Film genre was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_film_genre
      @film_genre = FilmGenre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def film_genre_params
      params.require(:film_genre).permit(:name)
    end
end
