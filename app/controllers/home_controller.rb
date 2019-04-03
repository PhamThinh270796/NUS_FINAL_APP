class HomeController < ApplicationController
  ALBUMS_PER_PAGE = 6
  PHOTOS_PER_PAGE = 6
  def index
    if params[:type].eql?("Album")
      @albums = Album.shared.page(params[:page]).per(ALBUMS_PER_PAGE)
      @albums = Album.shared.search(params[:q]).page(params[:page]).per(ALBUMS_PER_PAGE)  if !params[:q].blank?
    else
      @photos = Photo.shared.page(params[:page]).per(PHOTOS_PER_PAGE)
      @photos = Photo.shared.search(params[:q]).page(params[:page]).per(PHOTOS_PER_PAGE) if !params[:q].blank?
    end
  end
end