class Api::V1::RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render json: @recipe, status: 200
  end

  def new
    @recipe = Recipe.new
  end

  def show
    @recipe = find(params[:id])
    render json: @recipe, status: 200
  end

  def create
    @recipe = Recipe.new(recipe_params)
    render json: @recipe, status: 200
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    render json: @recipe, status: 200
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.delete
    render json: { recipeId: @recipe.id }
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :category_id, :ingredient_id, :instruction_id, category_attributes: [:name], ingredient_attributes: [:name, :amount, :measurement], instruction_attributes: [:title, :description])
  end
end
