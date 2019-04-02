class HomeController < ApplicationController
  def index
    if params[:type].eql?("Album")
      @albums = Album.where(sharing_mode: true).page(params[:page]).per(6)
      @albums = Album.where("sharing_mode = ? AND album_title = ?", true, params[:q]).page(params[:page]).per(6) if !params[:q].blank?
    else
      @photos = Photo.where(sharing_mode: true).page(params[:page]).per(6)
      @photos = Photo.where("sharing_mode = ? AND title = ?", true, params[:q]).page(params[:page]).per(6) if !params[:q].blank?
    end
  end
end