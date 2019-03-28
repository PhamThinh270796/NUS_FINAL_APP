	class PhotosController < ApplicationController
	before_action :authenticate_user!

	def index
		@photos = current_user.photos
	end

	def new
		@photos = current_user.photos.new
	end

	def create
		@photos = current_user.photos.new(photos_params)
		if @photos.path.present?
			if @photos.save
				flash[:success] = "Photo added successfully"
				redirect_to action: :index
			end
		else
			flash[:alert] = "Please insert your photo"
			render action: :new
		end
	end

	private
	def photos_params
		params.require(:photo).permit(:title, :descripstion, :sharing_mode, :path)
	end
end
