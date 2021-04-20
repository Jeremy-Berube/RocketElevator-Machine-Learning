# Tutorial:
# https://westus.dev.cognitive.microsoft.com/docs/services/speech-to-text-api-v3-0/operations/CreateTranscription


class SpeechToTextController < ApplicationController


    # GET Get Transcription
    require 'net/http'

    uri = URI('https://westus.api.cognitive.microsoft.com/speechtotext/v3.0/transcriptions/{id}')
    uri.query = URI.encode_www_form({
    })

    request = Net::HTTP::Get.new(uri.request_uri)
    # Request headers
    request['Ocp-Apim-Subscription-Key'] = '{subscription key}'
    # Request body
    request.body = "{body}"

    response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
        http.request(request)
    end

    puts response.body



    # POST Create Transcription
    require 'net/http'

    uri = URI('https://westus.api.cognitive.microsoft.com/speechtotext/v3.0/transcriptions')
    uri.query = URI.encode_www_form({
    })
    
    request = Net::HTTP::Post.new(uri.request_uri)
    # Request headers
    request['Content-Type'] = 'application/json'
    # Request headers
    request['Ocp-Apim-Subscription-Key'] = '{subscription key}'
    # Request body
    request.body = "{body}"
    
    response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
        http.request(request)
    end
    
    puts response.body



    POST https://northcentralus.api.cognitive.microsoft.com/speechtotext/v3.0/transcriptions HTTP/1.1
    Host: northcentralus.api.cognitive.microsoft.com
    Content-Type: application/json
    
    {
      "contentUrls": [
        "https://contoso.com/mystoragelocation",
        "https://contoso.com/myotherstoragelocation"
      ],
      "properties": {
        "diarizationEnabled": false,
        "wordLevelTimestampsEnabled": false,
        "punctuationMode": "DictatedAndAutomatic",
        "profanityFilterMode": "Masked"
      },
      "locale": "en-US",
      "displayName": "Transcription using default model for en-US"
    }


end
