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

    # if @sound
    #   # render json: { user: UserSerializer.new(@user), jwt: @token }, status: :accepted
    #   render json: @sounds
    # else
    #   render json: { message: 'We are unable to upload your sound' }, status: 400
    # end
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
    params.permit(:name, :file, :sound_type, :image_url)
  end

  def set_storage_url
    ActiveStorage::Current.host = request.base_url
  end

end
