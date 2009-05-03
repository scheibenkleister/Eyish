class CollectionPreviewController < ApplicationController
  before_filter :login_required

  def show
    @photo = Photo.find(params[:id])
    respond_to do |format|
      format.jpg
      format.html
    end
  end
end
