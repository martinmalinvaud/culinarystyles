class CulinarystylesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @culinarystyles = Culinarystyle.all
  end

  def destroy
    @culinarystyle.destroy
  end
end
