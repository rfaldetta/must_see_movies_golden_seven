class DirectorsController < ApplicationController


# CREATE
  def new_form
  end

  def create_row
    d = Director.new
    d.name = params["the_name"]
    d.bio = params["the_bio"]
    d.dob = params["the_dob"]
    d.image_url = params["the_image_url"]
    d.save

    redirect_to("/directors")
  end


# READ
  def index
    @list_of_directors = Director.all
  end

  def show
    @director = Director.find(params["id"])
  end


# UPDATE
  def edit_form
    @director = Director.find(params["id"])
  end

  def update_row
    d = Director.find(params["id"])
    d.name = params["the_name"]
    d.bio = params["the_bio"]
    d.dob = params["the_dob"]
    d.image_url = params["the_image_url"]
    d.save

    redirect_to("/directors/" + params["id"].to_s)
  end


# DELETE
  def destroy
    d = Director.find(params["id"])
    d.destroy

    redirect_to("/directors")
  end


end
