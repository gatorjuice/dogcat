class ModesController < ApplicationController
  def index
    @modes = Mode.all
  end

  def show
    mode = Mode.find(params[:id])

    mode_runner = ModeInitializer.new(mode)

    @output = mode_runner.run

    redirect_to '/modes'
  end
end
