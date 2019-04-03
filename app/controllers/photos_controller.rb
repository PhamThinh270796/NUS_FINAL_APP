  class PhotosController < ApplicationController
  PHOTO_PER_PAGE = 6
  before_action :authenticate_user!
  before_action :get_photo, only: [:show, :update, :edit, :destroy]

  def index
    @photos = current_user.photos.page(params[:page]).per(PHOTO_PER_PAGE)
  end

  def new
    @photos = current_user.photos.new
  end

  def edit
  end

  def create
    @photos = current_user.photos.new(photo_params)
    if @photos.path.present?
      if @photos.save
        flash[:success] = t('.photo_added_successfully')
        redirect_to action: :index
      end
    else
      flash[:alert] = t('.photo_required')
      render action: :new
    end
  end

  def update
    if @photos.update(photo_params)
      flash[:success] = t('.photo_updated_successfully')
      redirect_to action: :index
    else
      render action: :edit
    end
  end

  def destroy
    if @photos.destroy
      flash[:notice] = t('.photo_removed_successfully')
      redirect_to action: :index
    end
  end

  private

  def get_photo
    @photos = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:title, :description, :is_public, :path)
  end
end
