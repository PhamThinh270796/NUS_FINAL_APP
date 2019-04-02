class Admin::PhotosController < Admin::AdminController
  before_action :authenticate_user!
  
  def index
    @photos = Photo.all.page(params[:page]).per(6)
  end
end