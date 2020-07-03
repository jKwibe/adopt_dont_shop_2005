class PetsController < ApplicationController
  before_action :find_pet, only: [:show, :update,:edit]
  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @shelter_id = params[:shelter_id]
  end

  def create
    shelter = Shelter.find(params[:shelter_id])
    @pet = shelter.pets.create(pet_params)
    redirect_to "/pets"
  end

  def edit
  end

  def update
    @pet.update(pet_params)

    redirect_to "/pets/#{@pet.id}"
  end

  def destroy
    Pet.destroy(params[:pet_id])
    redirect_to "/pets"
  end

  private
  def pet_params
    params.permit(:name, :age, :sex, :image, :description)
  end

  def find_pet
    @pet = Pet.find(params[:pet_id])
  end
end
