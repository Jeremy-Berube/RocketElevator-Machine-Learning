class CognitiveController < ApplicationController

require "uri"
require "net/http"


    def create_profile

        puts "tests ...................................................................."



        uri = URI('https://rocket.cognitiveservices.azure.com/spid/v1.0/identificationProfiles')
        uri.query = URI.encode_www_form({
        })
        
        request = Net::HTTP::Post.new(uri.request_uri)
        # Request headers
        request['Content-Type'] = 'application/json'
        # Request headers
        request['Ocp-Apim-Subscription-Key'] = "11844387abab4fe8912bbf53d3ee75fe"
        # Request body
        request.body = "{body}"
        
        response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
            http.request(request)
        end
        
        puts response.body
        @profile = response.read_body
        render json: {profile: @profile}
        
    end

end