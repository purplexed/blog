class PostsController < ApplicationController
	def index
		@posts = Post.all
	end
 
	#GET
	def new
		@post = Post.new
	end
 
	#POST
	def create
  		@post = Post.new(post_params)
 		
  		if @post.save
			flash[:notice] = "Post created"
			redirect_to @post
  		else
  			redirect_to @post
  		end
	end
 
	def show

		@post = Post.find(params[:id])
		
	end
 
	#GET
	def edit; end
	#PATCH|PUT
	def update; end
 
	def post_params
      params.require(:post).permit(:title, :body)
    end
 
 
end
