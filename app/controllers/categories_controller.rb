class CategoriesController < ApplicationController
  def index
  	@categories = Category.all
  end

  def show
  	@category = Category.find(params[:id])
  end

  def new
  	@category = Category.new
  end

  def create
  	@category = Category.new(category_params)
  	if @category.save
  		redirect_to @category 
  	else
  		@errors = @category.errors.full_messages
  		render :new
  	end
  end

  def update
  end

  def destroy
  end

  def edit
  end

  private
  def category_params
  	params.require(:category).permit(:title)
  end
end
