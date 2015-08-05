class MoviesController < ApplicationController

# CREATE
  def new_form
  end

  def create_row
    m = Movie.new
    m.title = params["the_title"]
    m.year = params["the_year"]
    m.duration = params["the_duration"]
    m.description = params["the_description"]
    m.image_url = params["the_image_url"]
    m.save

    redirect_to("/movies")
  end

# READ
  def index
    @list_of_movies = Movie.all
  end

  def show
    @movie = Movie.find(params["id"])
  end

#UPDATE
  def edit_form
    @movie = Movie.find(params["id"])
  end

  def update_row
    m = Movie.find(params["id"])
    m.title = params["the_title"]
    m.year = params["the_year"]
    m.duration = params["the_duration"]
    m.description = params["the_description"]
    m.image_url = params["the_image_url"]
    m.save

    redirect_to("/movies/" + params["id"].to_s)
  end


# DELETE
  def destroy
    m = Movie.find(params["id"])
    m.destroy

    redirect_to("/movies")
  end

end
