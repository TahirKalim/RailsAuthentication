class AlbumsController < ApplicationController

  def index
    @albums = Album.all
  end 

  def show
    @album = Album.find(params[:id])
    @photos = @album.photos
  end
  
before_action :require_user, only: [:index, :show]
  
end

