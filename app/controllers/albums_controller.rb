class AlbumsController < ApplicationController
  before_action :authenticate_user!

  def index
    @albums = current_user.albums
  end

  def new
    byebug
    @albums = current_user.albums.new
  end

  def create
    @albums = current_user.albums.new(albums_params)
    if @albums.save
      @albums.photos.each do |p|
        current_user.albums.find(@albums.id).photos.create()
      end
      redirect_to action: :index
    end
  end

  private

  def albums_params
    params.require(:album).permit(:album_title, :description, :sharing_mode, photo: {:title, :description, :sharing_mode, :path})
  end
end
