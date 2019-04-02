class Admin::AlbumsController < Admin::AdminController
  before_action :authenticate_user!

  def index
    @albums = Album.all.page(params[:page]).per(6)
  end

end