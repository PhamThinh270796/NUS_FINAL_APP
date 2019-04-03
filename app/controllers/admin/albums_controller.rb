class Admin::AlbumsController < Admin::AdminController
  ALBUMS_PER_PAGE = 6
  before_action :authenticate_user!
  before_action :get_album, only: :edit
  def index
    @albums = Album.all.page(params[:page]).per(ALBUMS_PER_PAGE)
  end

  def edit

  end

  private

  def get_album
    @album = Album.find(params[:id])
  end
end