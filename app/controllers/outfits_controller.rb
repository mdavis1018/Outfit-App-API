class OutfitsController < ApplicationController
  def index 
  @outfits = Outfit.all
  render json: @outfits
  end
  
  def show
    @outfits = Outfit.find_by(id: params[:id])
    render json: @outfits
  end

  def create
  @outfit = Outfit.new(
    user_id: params[:user_id],
    title: params[:title],
  )
  if @outfit.save
    render json: @outfit
  end
  end

  def update
    outfit = Outfit.find_by(id: params[:id])

    outfit.title = params[:title] 
    outfit.user_id = params[:user_id] 

    if outfit.save
      render json: outfit
    else
      render json: { errors: outfit.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
  outfit = Outfit.find_by(id: params[:id])
  outfit.destroy

  render json: {message: "destroyed"}
  end
end
