class SessionsController < Devise::SessionsController
	def create
		super do |resource|
			unless resource.is_active?
				sign_out
				flash[:alert] = "Account has been locked. Please contact your Administrator."
				redirect_to new_user_session_path
				return
			end
		end
	end
end
