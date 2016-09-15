class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all  
    sort_attribute = params[:sort]

    if sort_attribute
      @recipes = @recipes.order(sort_attribute)  
    end
  end

  def new
    
  end

  def create
    @recipe = Recipe.create(title: params[:title],
                            chef: params[:chef],
                            prep_time: params[:prep_time],
                            ingredients: params[:ingredients],
                            directions: params[:directions])

    # render 'show.html.erb'
    flash[:success] = "New Recipe Created"
    redirect_to "/recipes/#{@recipe.id}"
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(title: params[:title],
                   prep_time: params[:prep_time],
                   chef: params[:chef],
                   ingredients: params[:ingredients],
                   directions: params[:directions])

    # render 'show.html.erb'
    redirect_to "/recipes/#{@recipe.id}"
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    
    flash[:warning] = "And...she gone."
    redirect_to '/recipes'
  end
end
