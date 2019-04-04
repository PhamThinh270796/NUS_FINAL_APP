class Admin::PhotosController < Admin::AdminController
  before_action :authenticate_user!
  before_action :get_photo, only: :edit

  def index
    @photos = Photo.all.page(params[:page]).per(Constant::PHOTOS_PER_PAGE)
  end

  def edit

  end

  private
  def get_photo
    @photo = Photo.find(params[:id])
  end
end