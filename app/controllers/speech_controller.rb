class SpeechController < ApplicationController
    require 'json'
    require 'openssl'
    require 'net/http'

    def speech_to_text 
        # uri = URI('https://eastus.stt.speech.microsoft.com/speech/recognition/conversation/cognitiveservices/v1?language=fr-CA')
        # uri.query = URI.encode_www_form({
        # })
        
        # request = Net::HTTP::Post.new(uri.request_uri)
        # # Request headers
        # request['Ocp-Apim-Subscription-Key'] = '34110eb8965c476a94efd2fd033a8981'
        # # Request body
        # request.body = "audio/sequence1.wav"
        
        # response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
        #     http.request(request)
        # end
        
        #  puts response.body
        uri = URI('https://eastus.stt.speech.microsoft.com/speech/recognition/conversation/cognitiveservices/v1?language=fr-CA')

        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true

        request = Net::HTTP::Post.new(
        uri,
        'Ocp-Apim-Subscription-Key' => '34110eb8965c476a94efd2fd033a8981',
        'Content-Type' => 'audio/wav',
        'transfer-encoding' => 'chunked'
        )

        request.body_stream = File.open('app/assets/audios/sequence1.wav', 'wb')

        response = http.start do |http|
        http.request(request)
        end
        puts response.read_body
    end
    
end
