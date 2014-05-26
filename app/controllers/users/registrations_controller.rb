class Users::RegistrationsController < Devise::RegistrationsController
	# before_filter :check_permissions, :only => [:new, :create, :cancel]
	skip_before_filter :require_no_authentication

	protected

	def after_sign_up_path_for(resource)
		'/projects'
	end

	def after_sign_in_path_for(resource)
	  '/projects'
	end

	# def check_permissions
	# 	authorize! :create, resource
	# end
end