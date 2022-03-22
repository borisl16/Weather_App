class HomeController < ApplicationController
  require 'rest-client'
  require 'dotenv/load'  
  require 'json'
  Dotenv.load

  def index

    @response = RestClient.get 'http://api.weatherapi.com/v1/current.json?key=&q=London',
    {content_type: :json, accept: :json, 'user-key': ENV['']}
    
    @city = JSON.parse(@response.body, symbolize_keys: true)

  end
end
