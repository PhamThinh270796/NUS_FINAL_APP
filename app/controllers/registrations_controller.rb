class RegistrationsController < Devise::RegistrationsController
	def create
		build_resource(sign_up_params)

		resource.save
		yield resource if block_given?
		if resource.persisted?
			set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
			expire_data_after_sign_in!
			respond_with resource, location: after_inactive_sign_up_path_for(resource)
		else
			clean_up_passwords resource
			set_minimum_password_length
			respond_with resource
		end
	end

	protected

	def update_resource(resource, params)
		if params[:password].present?
			resource.update_with_password(params)
		else
			resource.update_without_password(params.except(:current_password))
		end
  end
end
