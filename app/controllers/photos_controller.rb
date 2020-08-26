class PhotosController < ApplicationController
    before_action :authenticate_user!
    # protect_from_forgery with: :null_session
    skip_before_action :verify_authenticity_token
    def home 
    end 

    def new 
     byebug
    end 
    def create
        @photos = []
        photos_params.each do |x|
        #    photo = Photo.create(url: x[:url], quote: x[:quote])
           photo = Photo.create(photo: x[:url], quote: x[:quote])
           if photo.save 
            @profile = Profile.create(user_id: current_user.id, photo_id: photo.id)
            byebug
        #    photo.user = current_user
        #    byebug
        #    photo.user 
           @photos << photo
           end
        end 
        # byebug
        # @profile = Profile.create(user_id: current_user.id, photo_id: photo.id)
        # byebug

      
        # if @photos.save
        #     byebug
        #    else 
        #      redirect_to @photos
        #    end 
        

        # photos_params.each do |x|
        #     Photo.create(x)
        # end
       
    #     @photo = Photo.create(photos_params)
    #     byebug
    #     @company.user = current_user
    #     if @company.save
    #     redirect_to company_path(@company)
    #    else
    #   render :new
    # end
  end

    def index
        # byebug 
        # @photo = "https://source.unsplash.com/random"
        @photos = Unsplash::Photo.search("cats")
        # @photos = []
        # photos.each do |p|
        #    a = Photo.new(photo: p["urls"].full, quote: p["alt_description"] )
        #    @photos << a
        # end 
        #@photo = Photo.new
        # @photos = []
        # photos.each do |a|
        #     photo_hash = {
        #     description: a["alt_description"],
        #     portfolio: a["portfolio_url"],
        #     photo: a["urls"].full
        #     }
        #     @photos << photo_hash
        # end 

        # byebug
        # @photo[0]["urls"].full

        # url = "https://quotes.rest/qod"
        # uri = URI.parse(url)
        # response = Net::HTTP.get_response(uri)
        # res = JSON.parse(response.body)
        # # res["contents"]
        # @quote = res["contents"]["quotes"][0]["quote"]
        # if @quote == nil
        #     @quote = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
        # end
        # author = res["contents"]["quotes"][0]["author"]
        # category = res["contents"]["quotes"][0]["category"]
    end 

    private  
    def photos_params
        params.require(:data).each do |x|
            x.permit(:url, :quote)
        end
    end 
end
