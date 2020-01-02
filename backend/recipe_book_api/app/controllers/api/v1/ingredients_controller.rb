class Api::V1::IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
    render json: @ingredients, status: 200
  end

  def new
    @ingredient = Ingredient.new
  end

  def show
    @ingredient = Ingredient.find(params[:id])
    render json: @ingredient, status: 200
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    render json: @ingredient, status: 200
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredient_params)
    render json: @ingredient, status: 200
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.delete
    render json: {ingredientId: @ingredient.id}
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:amount, :measurement, :name)
  end
end
