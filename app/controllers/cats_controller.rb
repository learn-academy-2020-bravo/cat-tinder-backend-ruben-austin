class CatsController < ApplicationController
  def index
    cats = Cat.all
    render json: cats
  end

  def create
    # Create a new cat
    cat = Cat.create(cat_params)
    if cat.valid?
    render json: cat
    else
      render json: cat.errors, status: 422
    end


  end
  
  def show
    cat= cat.find(:id)
    if cat.valid?
    render json: cat
    else
    render json: cat.errors, status: 422
    end
  end

  private
  def cat_params
    params.require(:cat).permit(:name, :age, :enjoys, :images)
  end
end
