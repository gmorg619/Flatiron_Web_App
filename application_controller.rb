require_relative 'models/celeb_smash.rb'
require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  #GET gets data from the server
  get '/' do
    erb :index
  end
  
   get '/taylor_swift' do
    erb :taylor_swift
  end
  get '/drake' do
    erb :drake
  end


  #POST sends data to the server
  post '/celeb_page' do
    @celeb_hash = {
  "Taylor Swift" => {:name    => "<h1>Taylor Swift</h1>",
              :Twitter => "<blockquote class='twitter-tweet' lang='en'><p lang='en' dir='ltr'>&quot;Your little hand&#39;s wrapped around my finger and it&#39;s so quiet in the world tonight...&quot; <a href='http://t.co/nGaWkKHmJk'>pic.twitter.com/nGaWkKHmJk</a></p>&mdash; Taylor Swift (@taylorswift13) <a href='https://twitter.com/taylorswift13/status/626153646724550656'>July 28, 2015</a></blockquote><script async src='//platform.twitter.com/widgets.js' charset='utf-8'></script>",
              :website => "http://taylorswift.com/",
              :youtube => "<iframe width='560' height='315' src='https://www.youtube.com/embed/QcIy9NiNbmo' frameborder='0' allowfullscreen></iframe>"},
  "Drake"  => {:name    => "<h1>Drake</h1>",
              :Twitter => "<blockquote class='twitter-tweet' lang='en'><p lang='und' dir='ltr'><a href='https://t.co/jWMfEPxBqM'>https://t.co/jWMfEPxBqM</a></p>&mdash; Drizzy (@Drake) <a href='https://twitter.com/Drake/status/626309606810128384'>July 29, 2015</a></blockquote><script async src='//platform.twitter.com/widgets.js' charset='utf-8'></script>",
              :website => "http://www.drakeofficial.com/",
              :youtube => "<iframe width='420' height='315' src='https://www.youtube.com/embed/TjaMxaH4kjg' frameborder='0' allowfullscreen></iframe>"}

}
    person = params[:person]
    if @celeb_hash.has_key?(person)
      print_celeb_name(@celeb_hash[person])
      print_celeb_info(@celeb_hash[person])
    end
  end

end