class AlbumsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_album, only: [:show, :destroy, :update, :edit]

  def index
    @albums = current_user.albums.page(params[:page]).per(6)
  end

  def new
    @album = current_user.albums.new
    @album.photos.build
  end

  def show

  end

  def create
    @album = current_user.albums.new(albums_params)
    if @album.save
      flash[:success] = t('album_added_successfully')
      redirect_to action: :index
    else
      flash[:alert] = t('album_required')
      redirect_to action: :new
    end
  end

  def edit
    @photos = @album.photos
  end

  def update
    byebug
    params[:album][:photos_attributes]
    if @album.update(albums_params)
      flash[:success] = t('album_updated_successfully')
      redirect_to action: :index
    end
  end

  def destroy
    if @album.destroy
      flash[:success] = t('album_removed_successfully')
      redirect_to action: :index
    else
    end
  end

  private

  def set_album
    @album = Album.find(params[:id])
  end

  def albums_params
    params.require(:album).permit(:album_title, :description, :sharing_mode, photos_attributes: [:user_id, :title, :description, :sharing_mode, :path, :id])
  end
end
