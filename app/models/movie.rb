class Movie < ActiveRecord::Base
  def self.create_with_title(title)
    Movie.create(title: title)
    # newMovie = Movie.new
    # newMovie.title = title
    # newMovie.save
  end

  def self.first_movie
    first
  end
  
  def self.last_movie
    last
  end

  def self.movie_count
    count 
  end

  def self.find_movie_with_id(id)
    Movie.find(id)
  end

  def self.find_movie_with_attributes(attribute)
    Movie.find_by(attribute)
  end

  def self.find_movies_after_2002
    Movie.where('release_date > 2002')
  end

  def update_with_attributes(attribute)
    self.update(attribute)
  end

  def self.update_all_titles(attribute)
    Movie.update(title: attribute)
  end

  def self.delete_by_id(id)
    Movie.find(id).destroy
  end

  def self.delete_all_movies
    Movie.destroy_all
  end

end
