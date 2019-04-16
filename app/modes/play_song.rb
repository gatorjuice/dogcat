class PlaySong
  attr_reader :song_file

  def initialize
    @song_file = "#{('a'..'t').to_a.sample}.wav"
  end

  def run
    `play "~/src/dogcat/app/assets/songs/#{song_file}"`
  end

  def output
    nil
  end
end
