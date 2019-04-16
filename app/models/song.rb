class Song < ApplicationRecord
  validates_uniqueness_of :name

  def play
    Thread.new do
      `play "~/src/dogcat/app/assets/songs/#{name}.wav"`
    end
  end
end
