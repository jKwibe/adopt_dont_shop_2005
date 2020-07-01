class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:pet_id])
  end

  def new
    @shelter_id = params[:shelter_id]
  end

  def create
    shelter = Shelter.find(params[:shelter_id])
    @pet = shelter.pets.create(pet_params)
    redirect_to "/pets"
  end

  private
  def pet_params
    params.permit(:name, :age, :sex, :image, :description)
  end
end
