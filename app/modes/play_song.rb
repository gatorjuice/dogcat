class PlaySong
  def run
    song_file = "#{('a'..'t').to_a.sample}.wav"
    `play "~/src/dogcat/app/assets/songs/#{song_file}"`
  end
end
