class RecipesController < ApplicationController
    before_action :all_recipes, only: [:index, :create, :update, :destroy]
    before_action :set_recipe, only: [:edit, :update, :destroy]
    respond_to :html, :js
    def index
    end
    def destroy
        @recipe.destroy
    end
    def new
        @recipe = Recipe.new
    end
    def create
        @recipe = Recipe.create(recipe_params)
    end
    def update
        @recipe.update_attributes(recipe_params)
    end
    private
    def all_recipes
        @recipes = Recipe.all
    end
    def set_recipe
        @recipe = Recipe.find(params[:id])
    end
    def recipe_params
        params.require(:recipe).permit(:content, :name)
    end
end