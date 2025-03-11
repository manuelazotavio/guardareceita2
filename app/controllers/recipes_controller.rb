class RecipesController < ApplicationController
  allow_unauthenticated_access
  skip_forgery_protection
    before_action :set_recipe, only: %i[ show edit update destroy ]

    def index
      @recipes = Recipe.all
    end

    def show
    end

    def new
      @recipe = Recipe.new
    end

    def create
      @recipe = Recipe.new(recipe_params)
      if @recipe.save
        puts "recipe post ok"
      else
        render :new, status: :unprocessable_entity
      end
    end

    def edit
    end

    def update
      if @recipe.update(recipe_params)
        puts "recipe update ok"
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      if @recipe.destroy
        puts "recipe delete ok"
      else
        render :destroy, status: :unprocessable_entity
      end
    end

    private
      def set_recipe
        @recipe = Recipe.find(params[:id])
      end

      def recipe_params
        params.expect(recipe: [ :name, :description, :user_id, :time, :portions, :rating, :ingredients, :instruction ])
      end
end
