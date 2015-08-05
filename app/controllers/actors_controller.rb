class ActorsController < ApplicationController


# CREATE
  def new_form
  end

  def create_row
    a = Actor.new
    a.name = params["the_name"]
    a.bio = params["the_bio"]
    a.dob = params["the_dob"]
    a.image_url = params["the_image_url"]
    a.save

    redirect_to("/actors")
  end


# READ
  def index
    @list_of_actors = Actor.all
  end

  def show
    @actor = Actor.find(params["id"])
  end


# UPDATE
  def edit_form
    @actor = Actor.find(params["id"])
  end

  def update_row
    a = Actor.find(params["id"])
    a.name = params["the_name"]
    a.bio = params["the_bio"]
    a.dob = params["the_dob"]
    a.image_url = params["the_image_url"]
    a.save

    redirect_to("/actors/" + params["id"].to_s)
  end


# DELETE
  def destroy
    a = Actor.find(params["id"])
    a.destroy

    redirect_to("/actors")
  end


end
