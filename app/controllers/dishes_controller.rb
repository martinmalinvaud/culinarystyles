class DishesController < ApplicationController
  before_action :set_dish, only: [:show, :edit, :update, :destroy]
  before_action :set_culinarystyle, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :edit, :update, :create]


  def new
    @dish = Dish.new
  end

  def edit
  end

  def index
    @dishes = Dish.all
  end

  def show
  end

  def create
    @dish = Dish.new(dish_params)
    if @dish.save
      redirect_to dish_path(@dish)
    else
      render :new
    end

  end

  def update
    @dish.update(dish_params)

    redirect_to dish_path(@dish)

  end

  def destroy
    @dish.destroy

    redirect_to dishes_path
  end

  private

  def set_dish
    @dish = Dish.find(params[:id])
  end

  def dish_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:dish).permit(:id, :name, :description)
  end

  def set_culinarystyle
    @culinarystyle = Culinarystyle.find(params[:id])
  end
end
