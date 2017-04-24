class CulinarystylesController < ApplicationController
  before_action :set_culinarystyle, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :edit, :update, :create]


  def new
    @culinarystyle = Culinarystyle.new
  end

  def edit
  end

  def index
    @culinarystyles = Culinarystyle.all
  end

  def show
    @dishes = @culinarystyle.dishes
  end

  def create
    @culinarystyle = Culinarystyle.new(culinarystyle_params)
    if @culinarystyle.save
      redirect_to culinarystyle_path(@culinarystyle)
    else
      render :new
    end

  end

  def update
    @culinarystyle.update(culinarystyle_params)

    redirect_to culinarystyle_path(@culinarystyle)

  end

  def destroy
    @culinarystyle.destroy

    redirect_to culinarystyles_path
  end

  private

  def set_culinarystyle
    @culinarystyle = Culinarystyle.find(params[:id])
  end

  def culinarystyle_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:culinarystyle).permit(:name, :description)
  end
end
