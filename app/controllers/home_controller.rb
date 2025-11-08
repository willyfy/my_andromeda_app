class HomeController < ApplicationController
  def index
    @photos = Photo.all.order(created_at: :desc)
    @photo = Photo.new
  end
      
  def create
    @photo = Photo.new(photo_params)
                
    if @photo.save
      redirect_to root_path, notice: 'Photo added to the Andromeda gallery !'
    else
       @photos = Photo.all.order(created_at: :desc)
       render :index
    end
  end
        
  private
          
  def photo_params
    params.require(:photo).permit(:title, :description, :image)
  end
end
