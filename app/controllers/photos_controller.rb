  class PhotosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_photo, only: [:show, :update, :edit, :destroy]

  def index
    @photos = current_user.photos.page(params[:page]).per(6)
  end

  def new
    @photos = current_user.photos.new
  end

  def edit
  end

  def create
    @photos = current_user.photos.new(photos_params)
    if @photos.path.present?
      if @photos.save
        flash[:success] = t('photo_added_successfully')
        redirect_to action: :index
      end
    else
      flash[:alert] = t('photo_required')
      render action: :new
    end
  end

  def update
    if @photos.update(photos_params)
      flash[:success] = t('photo_updated_successfully')
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  def destroy
    if @photos.destroy
      flash[:notice] = t('photo_removed_successfully')
      redirect_to action: :index
    end
  end

  private

  def set_photo
    @photos = Photo.find(params[:id])
  end

  def photos_params
    params.require(:photo).permit(:title, :descripstion, :sharing_mode, :path)
  end
end
