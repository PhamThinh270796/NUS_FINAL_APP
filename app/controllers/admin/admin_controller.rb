class Admin::AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_admin

  private

  def authorize_admin
    if !current_user.role.eql?("admin")
      flash[:alert] = t(".access_permission")
      redirect_to root_path
    end
  end
end