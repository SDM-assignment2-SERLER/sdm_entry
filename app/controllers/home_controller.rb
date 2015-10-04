class HomeController < ApplicationController
	def index
		render inline: 'home'
	end
end
