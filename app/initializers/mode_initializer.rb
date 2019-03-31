class ModeInitializer
  attr_reader :mode_name

  def initialize(mode)
    @mode_name = mode.name
  end

  def run
    initialized_mode = mode_name.camelize.constantize.new
    initialized_mode.run
  end
end
