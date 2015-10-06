class StaticController < ApplicationController
	def about
	end

	def temp
	end

	def profiles
		@users = User.all
	end
end
