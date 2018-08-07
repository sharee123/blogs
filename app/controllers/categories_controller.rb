class CategoriesController < ApplicationController
  def index
  	@categories = Category.all
	end
  

  def new
  end

  def edit
  end

  def show
		@category = Category.find(params[:id])	
		@title = @category.name
		@posts = @category.posts
	end
end
