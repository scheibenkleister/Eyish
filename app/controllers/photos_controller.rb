class PhotosController < ApplicationController

  before_filter :login_required
  caches_page :show

  def new
    if current_user.login != 'admin'
      flash[:error]= "You are not allowed to upload new photos."
      return
    end
    @photo= Photo.new
  end

  def create
    if current_user.login != 'admin'
      flash[:error]= "You are not allowed to upload new photos."
      return
    end
    @photo = Photo.new(params[:photo])
    if @photo.save
      redirect_to photo_url(@photo)
    else
      flash[:notice] = 'Your photo did not pass validation!'
      render :action => 'new'
    end
  end

  def show
      @photo = Photo.find(params[:id])

      respond_to do |format|
        format.jpg #show.jpg.flexi
        format.html #show.html.erb
      end
  end
end
