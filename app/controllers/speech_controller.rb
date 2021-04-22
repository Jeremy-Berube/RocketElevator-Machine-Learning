require 'json'
require 'net/http'
require 'openssl'
class SpeechController < ApplicationController
        
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
        puts response.body
          
    end
    
    def create_profile

        uri = URI('https://rocket.cognitiveservices.azure.com/spid/v1.0/identificationProfiles')
        uri.query = URI.encode_www_form({
        })
        
        request = Net::HTTP::Post.new(uri.request_uri)
        # Request headers
        request['Content-Type'] = 'application/json'
        # Request headers
        request['Ocp-Apim-Subscription-Key'] = "11844387abab4fe8912bbf53d3ee75fe"
        # Request body
        request.body = "{'locale':'en-us',}"
        
        response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
            http.request(request)
        end
        
        puts response.body
        @profile = JSON.parse(response.body)
        puts @profile['identificationProfileId']
        puts '----------------------------------------'
        render json: {identificationProfileId: @profile['identificationProfileId']}
        
    end
end
