class PostsController < ApplicationController
	def post_params
      params.require(:post).permit(:title, :body)
    end

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
	def edit
		@post = Post.find(params[:id])
	end
	#PATCH|PUT
	def update
		@post = Post.find(params[:id])

		if @post.update(post_params)
			redirect_to @post
		else
			render 'edit'
		end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy

		redirect_to posts_path
	end
 
end
