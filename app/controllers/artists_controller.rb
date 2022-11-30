class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
  end

  def create
    artist = Artist.create!(artists_params)
    redirect_to "/artists"
  end

  def artists_params
    params.permit(:name)
  end
end