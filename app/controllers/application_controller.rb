class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  protected

  # def after_sign_in_path_for(resource)
  	# if current_user.has_role?('user')
  	# 	bibliographics_path
  	# elsif current_user.has_role?('mod')
  	# 	mod_index_bibliographics_path
  	# elsif current_user.has_role?('ana')
  	# 	confirmed_list_bibliographics_path
  	# else
  	# 	bibliographics_path
  	# end #if
  # end

end
