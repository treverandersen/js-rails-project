class Api::V1::CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render json: @categories, status: 200
  end

  def new
    @category = Category.new
  end

  def show
    @category = Category.find(params[:id])
    render json: @category, status: 200
  end

  def create
    @category = Category.new(category_params)
    render json: @category, status: 200
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    render json: @category, status: 200
  end

  def destroy
    @category = Category.find(params[:id])
    @category.delete
    render json: {categoryId: @category.id}
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
