require 'json'
require 'net/http'
require 'openssl'
class SpeechController < ApplicationController
    
    
    def speech 
        @output = "test123"
        puts @output 
        return @output
    end

    def speech_to_text 
        uri = URI('https://eastus.stt.speech.microsoft.com/speech/recognition/conversation/cognitiveservices/v1')
        uri.query = URI.encode_www_form({
            'language' => 'fr-CA'
            })
            
            request = Net::HTTP::Post.new(uri.request_uri)
            # Request headers
            request['Ocp-Apim-Subscription-Key'] = '34110eb8965c476a94efd2fd033a8981'
            request['Content-Type'] = 'audio/wav'
            # Request body
            request.body = File.read('app/assets/audios/sequence1.wav')
            # puts request.body
            
            response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
                http.request(request)
            end
            
            @output = JSON.parse(response.body)["DisplayText"]
            puts @output
         
         return @output

    end    
    helper_method :speech_to_text
end
