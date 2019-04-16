class ModesController < ApplicationController
  def index
    @modes = Mode.all
  end

  def show
    mode = Mode.find(params[:id])

    mode_initializer = ModeInitializer.new(mode)

    mode_initializer.run

    @output = mode_initializer.output
  end
end
