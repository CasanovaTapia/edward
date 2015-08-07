class ImagesController < ApplicationController
	before_action :set_post, only: [:create, :destroy, :new]

	def new
		@image = Image.new
	end

	def create
		@image = @post.images.new(image_params)
		@image.user = current_user
		if @image.save
			flash[:notice] = "Image was saved."
			redirect_to @post
		else
			flash[:error] = "Image was not saved, please try again."
			render :new
		end
	end

	def destroy
		@image = Image.find(params[:id])
		if @image.destroy
			flash[:notice] = "Image was deleted."
			redirect_to @post
		else
			flash[:error] = "Image was not deleted, please try again."
			redirect_to @post
		end
	end

	private

		def image_params
			params.require(:image).permit(:title, :avatar)
		end

		def set_post
			@post = Post.find(params[:post_id])
		end
end
