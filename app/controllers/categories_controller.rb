class CategoriesController < ApplicationController
  def index
    @categories=Category.all
  end

  def new
    @category=Category.new
  end

  def create
    @category=Category.new(params[:category])
    if @category.save
      redirect_to categories_url, :notice => "Category Created"
    else
      redirect_to categories_url, :notice => "Category creation failed"
    end
  end

  def destroy
  end

  def edit
    @category=Category.find(params[:id])
  end

  def update
    @category=Category.find(params[:id])

    if @category.update_attributes(params[:category])
      redirect_to categories_url, :notice=>"Category updated"
    else
      redirect_to categories_url, :notice=>"Category update failed"
    end
  end
end
