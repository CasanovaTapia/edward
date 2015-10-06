class StaticController < ApplicationController
	def about
		@users = User.all
	end

	def temp
	end
end
