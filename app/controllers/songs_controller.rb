class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.find(params[:id])
    if valid?
      @song = Song.create(post_params)
      redirect_to
    else
      render :new
  end




end
