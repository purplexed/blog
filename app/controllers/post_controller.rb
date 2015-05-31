class PostController < ApplicationController
	def index
		@posts = Post.all
	end

	#GET
	def new; end
	#POST
	def create; end

	#GET
	def edit; end
	#PATCH|PUT
	def update; end


end
