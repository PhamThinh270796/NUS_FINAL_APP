class HomeController < ApplicationController
  def index
    @photos = Photo.where(sharing_mode: true)
  end
end