class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
		@category = Category.all
	end

	def create
	@post =  Post.create(post_params)
	   if @post.save
	   	 redirect_to posts_path, :notice => "ur post saved"
	   else
	   	render "new"
	   end
	end

	def edit
		@post = Post.find(params[:id])	
	end

	def update
		@post = Post.find(params[:id])	
		if @post.update_attributes(post_params)
			redirect_to posts_path, :notice => "your post updated"
		else
			render "new"
		end
	end

	def show
		@post = Post.find(params[:id])	
	end

	def destroy
		@post = Post.find(params[:id])
		@post = Post.destroy(@post.id)
		redirect_to posts_path, :notice => "your post deleted"
	end


	private
	def post_params
	  params.require(:post).permit!
	end

end
