class PhotosController < ApplicationController
	before_action :authenticate_user!

	def index
		@photos = current_user.photos
	end

	def create

	end
end
