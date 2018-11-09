class Api::V1::SpritesController < ApplicationController
  skip_before_action :authorized

  def index
    @sprites = Sprite.all
    render json: @sprites
  end
  
end
