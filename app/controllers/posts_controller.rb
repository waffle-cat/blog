class PostsController < ApplicationController
	def show
		@post = Post.find(params[:id])
	end

	
	def index
	end

	def new
	end

	def create 
		@post = Post.new(post_params)

		if @post.save
			# redirect_to @post
			# redirect_to "/posts/#{@post.id}"
			redirect_to post_path(@post)
		else

		end
	end


	private
		def post_params
			params.require(:post).permit(:title, :body)
		end
end
