class HomeController < ApplicationController
  def index
    if params[:type].eql?("Album")
      @albums = Album.shared.page(params[:page]).per(Constant::ALBUMS_PER_PAGE)
      if params[:q].present?
        @albums = @albums.search(params[:q]).page(params[:page]).per(Constant::ALBUMS_PER_PAGE)
      end
    else
      @photos = Photo.shared.page(params[:page]).per(Constant::ALBUMS_PER_PAGE)
      if params[:q].present?
        @photos = Photo.search(params[:q]).page(params[:page]).per(Constant::ALBUMS_PER_PAGE)
      end
    end
  end
end