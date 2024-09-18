class DragonsController < ApplicationController
  def create
    castle = Castle.find(params[:castle_id])
    dragon = Dragon.new(dragon_params)
    dragon.castle = castle
    if dragon.save
      redirect_to castle_path(castle)
    else
      redirect_to castle_path(castle), status: :unprocessable_entity
    end

  end


  private
  def dragon_params
    params.require(:dragon).permit(:name, :colour, :image_url)
  end
end
