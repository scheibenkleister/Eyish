class PhotoPreviewController < ApplicationController

  before_filter :login_required

  def show
      @photo = Photo.find(params[:id])

      respond_to do |format|
        format.jpg #show.jpg.flexi
        format.html #show.html.erb
      end
  end

  def gallery_index
      @photo = Photo.find(params[:id])

      respond_to do |format|
        format.jpg #show.jpg.flexi
        format.html #show.html.erb
      end
  end
end
