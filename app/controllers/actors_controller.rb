class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find(params[:id])
  end

  def new_form
  end

  def create_row
    @actor = Actor.new
    @actor.dob = params[:dob].to_s
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]

    @actor.save

    redirect_to '/actors'

  end

  def edit
    @actor = Actor.find(params[:id])
    
  end

  def update_row
    @actor = Actor.find(params[:id])

    @actor.dob = params[:dob]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]

    @actor.save

    redirect_to '/actors'

  end

  def destroy
    @actor = Actor.find(params[:id])

    @actor.destroy
    
    redirect_to '/actors'
    
  end
end
