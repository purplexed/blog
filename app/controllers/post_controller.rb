class PostController < ApplicationController
	def index
		@posts = Post.all
	end

	#GET
	def new
		@post = Post.new
		@post.save
	end
	#POST
	def create
  		@post = Post.create
	end

	#GET
	def edit; end
	#PATCH|PUT
	def update; end


end
