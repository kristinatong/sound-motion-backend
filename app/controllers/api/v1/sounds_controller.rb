class Api::V1::SoundsController < ApplicationController
  before_action :set_storage_url
  skip_before_action :authorized

  def index
    @sounds = Sound.all
    render json: @sounds
  end

  def create
    @sound = Sound.create(sound_params)
    @sound.file.attach(sound_params[:file])
    # render json: {
    #   name: @sound.name,
    #   url: url_for(@sound.file)
    # }
    @sounds = Sound.all
    render json: @sounds
  end

  def show
    @sound = Sound.find(params[:id])
    render json: {
      name: @sound.name,
      url: @sound.file.service_url
    }
  end

  private

  def sound_params
    params.permit(:name, :file)
  end

  def set_storage_url
    ActiveStorage::Current.host = request.base_url
  end

end
