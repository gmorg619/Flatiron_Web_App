require_relative 'models/celeb_smash.rb'
require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  #GET gets data from the server
  get '/' do
    erb :index
  end
  

  #POST sends data to the server
  post '/celeb_page' do
    
    person = params_converter(params).downcase
    set_vars(person)
    
    erb :celeb_page
  end

end