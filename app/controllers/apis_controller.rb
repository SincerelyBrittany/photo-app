class ApisController < ApplicationController
    def get_photos
        url = "https://source.unsplash.com/random"
        # uri = URI.parse(url)
        # response = Net::HTTP.get_response(uri)
        # byebug
        # @photo = response.body
        # render photos_path
        #res = JSON.parse(response.body)
        #body = JSON.parse(request.body.read)
        #https://source.unsplash.com/random
    end 

    def get_quotes
        url = "https://quotes.rest/qod"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        res = JSON.parse(response.body)
        # res["contents"]
        quote = res["contents"]["quotes"][0]["quote"]
        author = res["contents"]["quotes"][0]["author"]
        category = res["contents"]["quotes"][0]["category"]
        #body = JSON.parse(request.body.read)
        #https://source.unsplash.com/random
    end 
end
