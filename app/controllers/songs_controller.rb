class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    song = Song.find(params[:id])
    song.play
    redirect_to '/songs'
  end
end
