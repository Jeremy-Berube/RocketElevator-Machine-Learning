require 'json'
require 'net/http'
require 'openssl'
class SpeechController < ApplicationController
    #--------------------------------------------------------------------Audio Sequence 1----------------------------------------------------------------------------------    
    def audio_sequence_1 
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
        @sequence1 = JSON.parse(response.body)
        puts @sequence1['DisplayText']
        render json: {DisplayText: @sequence1['DisplayText']}  
    end

    def audio_recognizer_1 
        uri = URI('https://eastus.api.cognitive.microsoft.com/speaker/identification/v2.0/text-independent/profiles/identifySingleSpeaker')
        uri.query = URI.encode_www_form({
            'profileIds' => 'fc7eb23b-bbb5-43d1-8607-b874859001e5'
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
        @recognizer = JSON.parse(response.body)
        puts @recognizer['identifiedProfile']['profileId']
        render json: {profileId: @recognizer['identifiedProfile']['profileId']}  
    end


    #--------------------------------------------------------------------Audio Sequence 2----------------------------------------------------------------------------------    

    def audio_sequence_2 
        uri = URI('https://eastus.stt.speech.microsoft.com/speech/recognition/conversation/cognitiveservices/v1')
        uri.query = URI.encode_www_form({
            'language' => 'fr-CA'
            })
            
        request = Net::HTTP::Post.new(uri.request_uri)
        # Request headers
        request['Ocp-Apim-Subscription-Key'] = '34110eb8965c476a94efd2fd033a8981'
        request['Content-Type'] = 'audio/wav'
        # Request body
        request.body = File.read('app/assets/audios/sequence2.wav')
        # puts request.body
        
        response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
            http.request(request)
        end
        puts response.body
        @sequence1 = JSON.parse(response.body)
        puts @sequence1['DisplayText']
        render json: {DisplayText: @sequence1['DisplayText']}  
    end

    def audio_recognizer_2 
        uri = URI('https://eastus.api.cognitive.microsoft.com/speaker/identification/v2.0/text-independent/profiles/identifySingleSpeaker')
        uri.query = URI.encode_www_form({
            'profileIds' => 'fc7eb23b-bbb5-43d1-8607-b874859001e5'
            })
            
        request = Net::HTTP::Post.new(uri.request_uri)
        # Request headers
        request['Ocp-Apim-Subscription-Key'] = '34110eb8965c476a94efd2fd033a8981'
        request['Content-Type'] = 'audio/wav'
        # Request body
        request.body = File.read('app/assets/audios/sequence2.wav')
        # puts request.body
        
        response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
            http.request(request)
        end
        puts response.body
        @recognizer = JSON.parse(response.body)
        puts @recognizer['identifiedProfile']['profileId']
        render json: {profileId: @recognizer['identifiedProfile']['profileId']}  
    end
    #--------------------------------------------------------------------Audio Sequence 3----------------------------------------------------------------------------------    

    def audio_sequence_3 
        uri = URI('https://eastus.stt.speech.microsoft.com/speech/recognition/conversation/cognitiveservices/v1')
        uri.query = URI.encode_www_form({
            'language' => 'fr-CA'
            })
            
        request = Net::HTTP::Post.new(uri.request_uri)
        # Request headers
        request['Ocp-Apim-Subscription-Key'] = '34110eb8965c476a94efd2fd033a8981'
        request['Content-Type'] = 'audio/wav'
        # Request body
        request.body = File.read('app/assets/audios/sequence3.wav')
        # puts request.body
        
        response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
            http.request(request)
        end
        puts response.body
        @sequence1 = JSON.parse(response.body)
        puts @sequence1['DisplayText']
        render json: {DisplayText: @sequence1['DisplayText']}  
    end

    def audio_recognizer_3 
        uri = URI('https://eastus.api.cognitive.microsoft.com/speaker/identification/v2.0/text-independent/profiles/identifySingleSpeaker')
        uri.query = URI.encode_www_form({
            'profileIds' => 'fc7eb23b-bbb5-43d1-8607-b874859001e5'
            })
            
        request = Net::HTTP::Post.new(uri.request_uri)
        # Request headers
        request['Ocp-Apim-Subscription-Key'] = '34110eb8965c476a94efd2fd033a8981'
        request['Content-Type'] = 'audio/wav'
        # Request body
        request.body = File.read('app/assets/audios/sequence3.wav')
        # puts request.body
        
        response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
            http.request(request)
        end
        puts response.body
        @recognizer = JSON.parse(response.body)
        puts @recognizer['identifiedProfile']['profileId']
        render json: {profileId: @recognizer['identifiedProfile']['profileId']}  
    end
    #--------------------------------------------------------------------Audio Sequence 4----------------------------------------------------------------------------------    

    def audio_sequence_4 
        uri = URI('https://eastus.stt.speech.microsoft.com/speech/recognition/conversation/cognitiveservices/v1')
        uri.query = URI.encode_www_form({
            'language' => 'fr-CA'
            })
            
        request = Net::HTTP::Post.new(uri.request_uri)
        # Request headers
        request['Ocp-Apim-Subscription-Key'] = '34110eb8965c476a94efd2fd033a8981'
        request['Content-Type'] = 'audio/wav'
        # Request body
        request.body = File.read('app/assets/audios/sequence4.wav')
        # puts request.body
        
        response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
            http.request(request)
        end
        puts response.body
        @sequence1 = JSON.parse(response.body)
        puts @sequence1['DisplayText']
        render json: {DisplayText: @sequence1['DisplayText']}  
    end

    def audio_recognizer_4 
        uri = URI('https://eastus.api.cognitive.microsoft.com/speaker/identification/v2.0/text-independent/profiles/identifySingleSpeaker')
        uri.query = URI.encode_www_form({
            'profileIds' => 'fc7eb23b-bbb5-43d1-8607-b874859001e5'
            })
            
        request = Net::HTTP::Post.new(uri.request_uri)
        # Request headers
        request['Ocp-Apim-Subscription-Key'] = '34110eb8965c476a94efd2fd033a8981'
        request['Content-Type'] = 'audio/wav'
        # Request body
        request.body = File.read('app/assets/audios/sequence4.wav')
        # puts request.body
        
        response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
            http.request(request)
        end
        puts response.body
        @recognizer = JSON.parse(response.body)
        puts @recognizer['identifiedProfile']['profileId']
        render json: {profileId: @recognizer['identifiedProfile']['profileId']}  
    end
    #--------------------------------------------------------------------Audio Sequence 5----------------------------------------------------------------------------------    

    def audio_sequence_5 
        uri = URI('https://eastus.stt.speech.microsoft.com/speech/recognition/conversation/cognitiveservices/v1')
        uri.query = URI.encode_www_form({
            'language' => 'fr-CA'
            })
            
        request = Net::HTTP::Post.new(uri.request_uri)
        # Request headers
        request['Ocp-Apim-Subscription-Key'] = '34110eb8965c476a94efd2fd033a8981'
        request['Content-Type'] = 'audio/wav'
        # Request body
        request.body = File.read('app/assets/audios/sequence5.wav')
        # puts request.body
        
        response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
            http.request(request)
        end
        puts response.body
        @sequence1 = JSON.parse(response.body)
        puts @sequence1['DisplayText']
        render json: {DisplayText: @sequence1['DisplayText']}  
    end

    def audio_recognizer_5 
        uri = URI('https://eastus.api.cognitive.microsoft.com/speaker/identification/v2.0/text-independent/profiles/identifySingleSpeaker')
        uri.query = URI.encode_www_form({
            'profileIds' => 'fc7eb23b-bbb5-43d1-8607-b874859001e5'
            })
            
        request = Net::HTTP::Post.new(uri.request_uri)
        # Request headers
        request['Ocp-Apim-Subscription-Key'] = '34110eb8965c476a94efd2fd033a8981'
        request['Content-Type'] = 'audio/wav'
        # Request body
        request.body = File.read('app/assets/audios/sequence5.wav')
        # puts request.body
        
        response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
            http.request(request)
        end
        puts response.body
        @recognizer = JSON.parse(response.body)
        puts @recognizer['identifiedProfile']['profileId']
        render json: {profileId: @recognizer['identifiedProfile']['profileId']}  
    end

    #--------------------------------------------------------------------Audio Sequence 6----------------------------------------------------------------------------------    

    def audio_sequence_6 
        uri = URI('https://eastus.stt.speech.microsoft.com/speech/recognition/conversation/cognitiveservices/v1')
        uri.query = URI.encode_www_form({
            'language' => 'en-US'
            })
            
        request = Net::HTTP::Post.new(uri.request_uri)
        # Request headers
        request['Ocp-Apim-Subscription-Key'] = '34110eb8965c476a94efd2fd033a8981'
        request['Content-Type'] = 'audio/wav'
        # Request body
        request.body = File.read('app/assets/audios/sequence6.wav')
        # puts request.body
        
        response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
            http.request(request)
        end
        puts response.body
        @sequence1 = JSON.parse(response.body)
        puts @sequence1['DisplayText']
        render json: {DisplayText: @sequence1['DisplayText']}  
    end
    def audio_recognizer_6 
        uri = URI('https://eastus.api.cognitive.microsoft.com/speaker/identification/v2.0/text-independent/profiles/identifySingleSpeaker')
        uri.query = URI.encode_www_form({
            'profileIds' => '037ca8dd-6b26-4cb0-b2c4-5be6d4b73a5e , a72260ec-7d01-440b-82dc-21339f2fa812 , cadf5312-5d6a-4c30-ae0a-f4b9c13f36f4'
            })
            
        request = Net::HTTP::Post.new(uri.request_uri)
        # Request headers
        request['Ocp-Apim-Subscription-Key'] = '34110eb8965c476a94efd2fd033a8981'
        request['Content-Type'] = 'audio/wav'
        # Request body
        request.body = File.read('app/assets/audios/sequence6.wav')
        # puts request.body
        
        response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
            http.request(request)
        end
        puts response.body
        @recognizer = JSON.parse(response.body)
        puts @recognizer['identifiedProfile']['profileId']
        render json: {profileId: @recognizer['identifiedProfile']['profileId']}  
    end

    #--------------------------------------------------------------------Audio Sequence 7----------------------------------------------------------------------------------    

    def audio_sequence_7 
        uri = URI('https://eastus.stt.speech.microsoft.com/speech/recognition/conversation/cognitiveservices/v1')
        uri.query = URI.encode_www_form({
            'language' => 'en-US'
            })
            
        request = Net::HTTP::Post.new(uri.request_uri)
        # Request headers
        request['Ocp-Apim-Subscription-Key'] = '34110eb8965c476a94efd2fd033a8981'
        request['Content-Type'] = 'audio/wav'
        # Request body
        request.body = File.read('app/assets/audios/sequence7.wav')
        # puts request.body
        
        response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
            http.request(request)
        end
        puts response.body
        @sequence1 = JSON.parse(response.body)
        puts @sequence1['DisplayText']
        render json: {DisplayText: @sequence1['DisplayText']}  
    end

    def audio_recognizer_7 
        uri = URI('https://eastus.api.cognitive.microsoft.com/speaker/identification/v2.0/text-independent/profiles/identifySingleSpeaker')
        uri.query = URI.encode_www_form({
            'profileIds' => '037ca8dd-6b26-4cb0-b2c4-5be6d4b73a5e , a72260ec-7d01-440b-82dc-21339f2fa812 , cadf5312-5d6a-4c30-ae0a-f4b9c13f36f4'
            })
            
        request = Net::HTTP::Post.new(uri.request_uri)
        # Request headers
        request['Ocp-Apim-Subscription-Key'] = '34110eb8965c476a94efd2fd033a8981'
        request['Content-Type'] = 'audio/wav'
        # Request body
        request.body = File.read('app/assets/audios/sequence7.wav')
        # puts request.body
        
        response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
            http.request(request)
        end
        puts response.body
        @recognizer = JSON.parse(response.body)
        puts @recognizer['identifiedProfile']['profileId']
        render json: {profileId: @recognizer['identifiedProfile']['profileId']}  
    end

    #--------------------------------------------------------------------Audio Sequence 8----------------------------------------------------------------------------------    

    def audio_sequence_8 
        uri = URI('https://eastus.stt.speech.microsoft.com/speech/recognition/conversation/cognitiveservices/v1')
        uri.query = URI.encode_www_form({
            'language' => 'en-US'
            })
            
        request = Net::HTTP::Post.new(uri.request_uri)
        # Request headers
        request['Ocp-Apim-Subscription-Key'] = '34110eb8965c476a94efd2fd033a8981'
        request['Content-Type'] = 'audio/wav'
        # Request body
        request.body = File.read('app/assets/audios/sequence8.wav')
        # puts request.body
        
        response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
            http.request(request)
        end
        puts response.body
        @sequence1 = JSON.parse(response.body)
        puts @sequence1['DisplayText']
        render json: {DisplayText: @sequence1['DisplayText']}  
    end

    def audio_recognizer_8 
        uri = URI('https://eastus.api.cognitive.microsoft.com/speaker/identification/v2.0/text-independent/profiles/identifySingleSpeaker')
        uri.query = URI.encode_www_form({
            'profileIds' => '037ca8dd-6b26-4cb0-b2c4-5be6d4b73a5e , a72260ec-7d01-440b-82dc-21339f2fa812 , cadf5312-5d6a-4c30-ae0a-f4b9c13f36f4'
            })
            
        request = Net::HTTP::Post.new(uri.request_uri)
        # Request headers
        request['Ocp-Apim-Subscription-Key'] = '34110eb8965c476a94efd2fd033a8981'
        request['Content-Type'] = 'audio/wav'
        # Request body
        request.body = File.read('app/assets/audios/sequence7.wav')
        # puts request.body
        
        response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
            http.request(request)
        end
        puts response.body
        @recognizer = JSON.parse(response.body)
        puts @recognizer['identifiedProfile']['profileId']
        render json: {profileId: @recognizer['identifiedProfile']['profileId']}  
    end


    #--------------------------------------------------------------------Audio Sequence 9----------------------------------------------------------------------------------    

    def audio_sequence_9 
        uri = URI('https://eastus.stt.speech.microsoft.com/speech/recognition/conversation/cognitiveservices/v1')
        uri.query = URI.encode_www_form({
            'language' => 'en-US'
            })
            
        request = Net::HTTP::Post.new(uri.request_uri)
        # Request headers
        request['Ocp-Apim-Subscription-Key'] = '34110eb8965c476a94efd2fd033a8981'
        request['Content-Type'] = 'audio/wav'
        # Request body
        request.body = File.read('app/assets/audios/sequence9.wav')
        # puts request.body
        
        response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
            http.request(request)
        end
        puts response.body
        @sequence1 = JSON.parse(response.body)
        puts @sequence1['DisplayText']
        render json: {DisplayText: @sequence1['DisplayText']}  
    end

    def audio_recognizer_9 
        uri = URI('https://eastus.api.cognitive.microsoft.com/speaker/identification/v2.0/text-independent/profiles/identifySingleSpeaker')
        uri.query = URI.encode_www_form({
            'profileIds' => '037ca8dd-6b26-4cb0-b2c4-5be6d4b73a5e , a72260ec-7d01-440b-82dc-21339f2fa812 , cadf5312-5d6a-4c30-ae0a-f4b9c13f36f4'
            })
            
        request = Net::HTTP::Post.new(uri.request_uri)
        # Request headers
        request['Ocp-Apim-Subscription-Key'] = '34110eb8965c476a94efd2fd033a8981'
        request['Content-Type'] = 'audio/wav'
        # Request body
        request.body = File.read('app/assets/audios/sequence7.wav')
        # puts request.body
        
        response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
            http.request(request)
        end
        puts response.body
        @recognizer = JSON.parse(response.body)
        puts @recognizer['identifiedProfile']['profileId']
        render json: {profileId: @recognizer['identifiedProfile']['profileId']}  
    end


    #--------------------------------------------------------------------Audio Sequence 10----------------------------------------------------------------------------------    

    def audio_sequence_10 
        uri = URI('https://eastus.stt.speech.microsoft.com/speech/recognition/conversation/cognitiveservices/v1')
        uri.query = URI.encode_www_form({
            'language' => 'en-US'
            })
            
        request = Net::HTTP::Post.new(uri.request_uri)
        # Request headers
        request['Ocp-Apim-Subscription-Key'] = '34110eb8965c476a94efd2fd033a8981'
        request['Content-Type'] = 'audio/wav'
        # Request body
        request.body = File.read('app/assets/audios/sequence10.wav')
        # puts request.body
        
        response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
            http.request(request)
        end
        puts response.body
        @sequence1 = JSON.parse(response.body)
        puts @sequence1['DisplayText']
        render json: {DisplayText: @sequence1['DisplayText']}  
    end
    
    def audio_recognizer_10
        uri = URI('https://eastus.api.cognitive.microsoft.com/speaker/identification/v2.0/text-independent/profiles/identifySingleSpeaker')
        uri.query = URI.encode_www_form({
            'profileIds' => '037ca8dd-6b26-4cb0-b2c4-5be6d4b73a5e , a72260ec-7d01-440b-82dc-21339f2fa812 , cadf5312-5d6a-4c30-ae0a-f4b9c13f36f4'
            })
            
        request = Net::HTTP::Post.new(uri.request_uri)
        # Request headers
        request['Ocp-Apim-Subscription-Key'] = '34110eb8965c476a94efd2fd033a8981'
        request['Content-Type'] = 'audio/wav'
        # Request body
        request.body = File.read('app/assets/audios/sequence7.wav')
        # puts request.body
        
        response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
            http.request(request)
        end
        puts response.body
        @recognizer = JSON.parse(response.body)
        puts @recognizer['identifiedProfile']['profileId']
        render json: {profileId: @recognizer['identifiedProfile']['profileId']}  
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
        render json: {identificationProfileId: @profile['identificationProfileId']}
        
    end
end
