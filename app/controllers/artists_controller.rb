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

  def edit
    @artist = Artist.find(params[:id])
  end
  
  def update
    artist = Artist.find(params[:id])
    artist.update(artists_params)

    redirect_to '/artists'
  end

  def destroy
    artist = Artist.find(params[:id])
    artist.destroy
    redirect_to '/artists'
  end
  
private
  def artists_params
    params.permit(:name)
  end
end