class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def edit
  @recipe = Recipe.find(params[:id])
  end

  def create
   @recipe = Recipe.create(recipe_params)
   redirect_to recipe_path(@recipe)
 end

  def new
    @recipe = Recipe.new
  end

def show
  @recipe = Recipe.find(params[:id])
  end

def update
     @recipe = Recipe.find(params[:id])
     @recipe.update(recipe_params)
     redirect_to recipe_path(@recipe)
   end

   def destroy
     @recipe = Recipe.find(params[:id])
     @recipe.destroy
     redirect_to recipe_path
   end

private

  def recipe_params
    params.require(:recipe).permit(:name, :img_url, :detail)
  end
end
