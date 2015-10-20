class HomeController < ApplicationController
	skip_before_action :authenticate_user!

	def index
		if current_user.present?
		  	@href = if current_user.has_role?('user')
		  		bibliographics_path
		  	elsif current_user.has_role?('mod')
		  		mod_index_bibliographics_path
		  	elsif current_user.has_role?('ana')
		  		confirmed_list_bibliographics_path
		  	else
		  		bibliographics_path
		  	end #if
		  	@add_url =  new_bibliographic_path if current_user.has_role?('user')
	    end #if
	end
end
