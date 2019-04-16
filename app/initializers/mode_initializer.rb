class ModeInitializer
  attr_reader :mode, :initialized_mode

  def initialize(mode)
    @initialized_mode = mode.name.camelize.constantize.new
  end

  def run
    initialized_mode.run
  end

  def output
    initialized_mode.output
  end
end
