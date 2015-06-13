class PostsController < ApplicationController
	before_action :find_post, except: [:index, :new, :create]

	def show; end
	def edit; end

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
  		redirect_to @post, notice: 'Post successfully created'
  	else
  		render :new
  	end
	end

	#PATCH|PUT
  def update
	 	if @post.update_attributes(post_params)
			redirect_to @post
		else
			render :edit
		end
	end

	def destroy
		if @post.destroy
    	redirect_to posts_path
   	else
   		redirect_to posts_path, alert: 'Couldnt delete that post'
  	end
	end

	protected

	def find_post
		@post = Post.find(params[:id])
	end
 
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
