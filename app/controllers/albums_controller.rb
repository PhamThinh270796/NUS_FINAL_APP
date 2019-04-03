class AlbumsController < ApplicationController
  ALBUMS_PER_PAGE = 6
  before_action :authenticate_user!
  before_action :get_album, only: [:show, :destroy, :update, :edit]

  def index
    @albums = current_user.albums.page(params[:page]).per(ALBUMS_PER_PAGE)
  end

  def new
    @album = current_user.albums.new
    @album.photos.build
  end

  def show

  end

  def create
    @album = current_user.albums.new(album_params)
    if @album.save
      flash[:success] = t('.album_added_successfully')
      redirect_to action: :index
    else
      flash[:alert] = t('.album_required')
      redirect_to action: :new
    end
  end

  def edit
    @photos = @album.photos
  end

  def update
    params[:album][:photos_attributes]
    if @album.update(album_params)
      flash[:success] = t('.album_updated_successfully')
      redirect_to action: :index
    end
  end

  def destroy
    if @album.destroy
      flash[:success] = t('.album_removed_successfully')
      redirect_to action: :index
    else
    end
  end

  private

  def get_album
    @album = Album.find(params[:id])
  end

  def album_params
    params.require(:album).permit(:album_title, :description, :is_public, photos_attributes: [:user_id, :title, :description, :is_public, :path, :id])
  end
end
