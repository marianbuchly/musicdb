class SongsController < ApplicationController
  def index
    @songs = Song.order(year: :asc)
  end

  def show
    @song = Song.find( params[:id] )
  end

  def song_params
    params.require(:song ).permit(:title, :duration, :album , :year)
end
end
