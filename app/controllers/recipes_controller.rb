class RecipesController < ApplicationController
    def index
      @recipes = Recipe.all
    end
  
    def search
      @recipes = Recipe.all
  
      if params[:cuisine].present?
        @recipes = @recipes.where('cuisine = ?', params[:cuisine])
      end
  
      if params[:ingredient].present?
        @recipes = @recipes.joins(:ingredients).where('ingredients.name = ?', params[:ingredient])
      end
  
      if @recipes.empty?
        flash.now[:notice] = "No recipes found"
      end
    end
  end
  