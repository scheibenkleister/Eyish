class CollectionsController < ApplicationController

  before_filter :login_required

  def new
    if current_user.login == 'admin'
      @collection = Collection.new
    else
      flash[:notice]= "You are not allowed to add a new gallery."
      redirect_to collections_path
    end
  end

  def create
    if curren_user.login != 'admin'
      flash[:notice]= "You are not allowed to add a new gallery."
      redirect_to collections_path
      return
    end

      @collection = Collection.new(params[:collection])
      if @collection.save
        flash[:notice]= "Collection successfully created."
      else
        render :action => "new"
      end
  end

  def index
    @collections = Collection.all :order => "creationDate DESC"
    respond_to do |format|
      format.html
      format.jpg
    end
  end

  def show
    @collection = Collection.find(params[:id])
  end
end
