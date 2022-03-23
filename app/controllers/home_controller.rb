class HomeController < ApplicationController
  require 'rest-client'
  require 'dotenv/load'  
  require 'json'
  Dotenv.load

  def index

    @response = RestClient.get 'http://api.weatherapi.com/v1/current.json?key=&q=London',
    {content_type: :json, accept: :json, 'user-key': ENV['']}
    
    @city = JSON.parse(@response.body, symbolize_keys: true)

    @response_1 = RestClient.get 'http://api.weatherapi.com/v1/current.json?key=&q=New York',
    {content_type: :json, accept: :json, 'user-key': ENV['']}
    
    @city_1 = JSON.parse(@response_1.body, symbolize_keys: true)

    @response_2 = RestClient.get 'http://api.weatherapi.com/v1/current.json?key=&q=Tokyo',
    {content_type: :json, accept: :json, 'user-key': ENV['']}
    
    @city_2 = JSON.parse(@response_2.body, symbolize_keys: true)

  end


  
end
