class Admin::UsersController < Admin::AdminController
  before_action :authenticate_user!
  before_action :set_users, only: [:update, :edit, :destroy]
  def index
    @users = User.all
  end

  def edit

  end

  def update
    byebug
    params[:user].delete(:password) if params[:user][:password].blank?
    params[:user].delete(:password_confirmation) if params[:user][:password_confirmation].blank?
    if @user.update(users_params)
      flash[:success] = t("update_user_success")
      redirect_to admin_root_path
    else
      flash[:notice] = @user.errors.full_messages
      render :edit
    end

  end

  def destroy
    if @user.destroy
      flash[:success] =  t("delete_user_success")
      redirect_to action: :index
    end
  end

  private

  def set_users
    @user = User.find(params[:id])
  end

  def users_params
    params.require(:user).permit(:first_name, :last_name, :is_active, :password, :password_confirmation, :email)
  end
end

