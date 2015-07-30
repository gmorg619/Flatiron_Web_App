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
              :picture => "<img id='tswift' src='http://static.guim.co.uk/sys-images/Guardian/Pix/pictures/2014/8/21/1408618840671/18839f21-608b-4acd-a2aa-a944db3e15e7-2060x1236.jpeg'>",
              :Twitter => "<a class='twitter-timeline' href='https://twitter.com/taylorswift13' data-widget-id='626771222114775040'>Tweets by @taylorswift13</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','twitter-wjs');</script>",
              :website => "http://taylorswift.com/",
              :youtube => "<iframe width='560' height='315' src='https://www.youtube.com/embed/QcIy9NiNbmo' frameborder='0' allowfullscreen></iframe>"},
  "Drake"  => {:name    => "<h1>Drake</h1>",
              :picture => "<img id='celeb_pic' src='http://djmag.ca/wp-content/uploads/2015/02/drake-remixes.jpg' style=verticaalign='middle'>",
              :Twitter => "<div><a class='twitter-timeline' href='https://twitter.com/Drake' data-widget-id='626762999680880640' width>Tweets by @Drake</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','twitter-wjs');</script><script async src='//platform.twitter.com/widgets.js' charset='utf-8'></script></div>",
              :website => "http://www.drakeofficial.com/",
              :soundloud => "<iframe width='75%' height='450' scrolling='no' frameborder='no' src='https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/users/1078461&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true'></iframe>",
              :youtube => "<iframe width='420' height='315' src='https://www.youtube.com/embed/TjaMxaH4kjg' frameborder='0' allowfullscreen></iframe>",
              :spotify => "<iframe id='spotify' src='https://embed.spotify.com/?uri=spotify%3Aartist%3A3TVXtAsR1Inumwj472S9r4' width='300' height='380' frameborder='0' allowtransparency='true'></iframe>"}

}
    person = params[:person]
    if @celeb_hash.has_key?(person)
      print_celeb_name(@celeb_hash[person])
      print_celeb_info(@celeb_hash[person])
    end
  end

end