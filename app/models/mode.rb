class Mode < ApplicationRecord
  def formatted_name
    name.humanize.split.map(&:capitalize).join(' ')
  end
end
