class CreateFilmGenres < ActiveRecord::Migration[7.0]
  def change
    create_table :film_genres do |t|
      t.string :name

      t.timestamps
    end
  end
end
