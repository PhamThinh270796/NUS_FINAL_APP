class SessionsController < Devise::SessionsController
  def create
    super do |resource|
      if !resource.is_active?
        sign_out
        flash[:alert] = "Account has been locked. Please contact your Administrator."
        redirect_to new_user_session_path
        return
      else
        if resource.role.eql?("admin")
          redirect_to admin_root_path
          return
        else
          redirect_to root_path
          return
        end
      end
    end
  end
end
