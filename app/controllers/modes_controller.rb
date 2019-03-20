class ModesController < ApplicationController
  def index
    @modes = Mode.all
  end

  def show
    @mode = Mode.find(params[:id])
  end
end
