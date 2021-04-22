class cognitiveController < ApplicationController

require "uri"
require "net/http"


    def create_profile
        url = URI("https://rocket.cognitiveservices.azure.com/spid/v1.0/identificationProfiles")

        https = Net::HTTP.new(url.host, url.port)
        https.use_ssl = true

        request = Net::HTTP::Post.new(url)
        request["Ocp-Apim-Subscription-Key"] = "11844387abab4fe8912bbf53d3ee75fe"
        request["Content-Type"] = "application/json"
        request.body = "{\r\n  \"locale\":\"en-us\",\r\n}"

        response = https.request(request)
        puts response.read_body
        @profile = response.read_body
        render json: {profile: @profile}

    end

end