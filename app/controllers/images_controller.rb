class ImagesController < ApplicationController
    def index
        @images = Image.all
    end
    
    def new
        @image = Image.new
    end
    
    def create
        title = params[:image][:title]
        file = params[:image][:file].read
        image = Image.new(title: title, file: file)
        image.save
        redirect_to '/'
    end
    
    def destroy
        image = Image.find(params[:id])
        image.destroy
        redirect_to '/'
    end
    
    def edit
        @image = Image.find(params[:id])
    end
    
    def update
        image = Image.find(params[:id])
        file = params[:image][:file].read
        title = params[:image][:title]
        image.update(title: title, file: file)
        redirect_to '/'
    end
    
    def get_image
        image = Image.find(params[:id])
        send_data image.file, disposition: :inline, type: 'image/png'
    end
    
    
end
