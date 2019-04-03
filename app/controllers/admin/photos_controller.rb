class Admin::PhotosController < Admin::AdminController
  PHOTOS_PER_PAGE = 6
  before_action :authenticate_user!
  before_action :get_photo, only: :edit

  def index
    @photos = Photo.all.page(params[:page]).per(PHOTOS_PER_PAGE)
  end

  def edit

  end

  private
  def get_photo
    @photo = Photo.find(params[:id])
  end
end