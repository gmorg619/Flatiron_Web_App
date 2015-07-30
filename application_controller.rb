require_relative 'celeb_smash.rb'
require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  #GET gets data from the server
  get '/index' do
    erb :index
  end


  #POST sends data to the server
  post '/celeb_page' do
    x = params[:person]
    @celeb_name = print_celeb_name(celeb_hash(x))
    @print_celeb_info = print_celeb_info(celeb_hash[x])
#     puts params
    erb :celeb_page
  end

end