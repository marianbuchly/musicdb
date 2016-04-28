class ArtistsController < ApplicationController
  def index
    @artists = Artist.order(name: :asc)
  end

  def show
    @artist = Artist.find( params[:id] )
  end

  def artist_params
    params.require(:artist ).permit( :name, :age, :bio, :img)
end
end
