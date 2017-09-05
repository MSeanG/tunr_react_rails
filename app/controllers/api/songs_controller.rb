class Api::SongsController < ApplicationController
  def index
    @artist = Artist.find(params[:id])
    @songs = @artist.songs.all
    render json: @songs
  end

  def show
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.find params[:id]
    render json: @song
  end

  # def create
  #   @song = Song.new(song_params)
  #   if @song.save
  #     render json: @song
  #   else
  #     render json: {
  #       message: 'Error when creating song'
  #     }
  #   end
  # end
  # end

  # def update 

  # end

  # def delete

  # end

end
