class Admin::AlbumsController < Admin::AdminController
  before_action :authenticate_user!
  before_action :get_album, only: :edit
  def index
    @albums = Album.all.page(params[:page]).per(Constant::ALBUMS_PER_PAGE)
  end

  def edit

  end

  private

  def get_album
    @album = Album.find(params[:id])
  end
end