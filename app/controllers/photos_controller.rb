class PhotosController < ApplicationController
    def home 
    end 
    def index 
        @photo = "https://source.unsplash.com/random"

        url = "https://quotes.rest/qod"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        res = JSON.parse(response.body)
        # res["contents"]
        @quote = res["contents"]["quotes"][0]["quote"]
        author = res["contents"]["quotes"][0]["author"]
        category = res["contents"]["quotes"][0]["category"]
    end 
end
