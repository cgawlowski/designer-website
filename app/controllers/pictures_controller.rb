class PicturesController < ApplicationController

  skip_before_action :authenticate_user!

  def index
    @pictures = Picture.all
  end
  
  def show
    @picture = Picture.find(params[:id])
  end
end
