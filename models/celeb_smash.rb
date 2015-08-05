def params_converter(params)
  if params.keys[0] == "person"
    return params_despacer(params["person"])
  else
    string = params.keys[0]
    new_string = ""
    i = 0

    while string[i] != "." do
      new_string << string[i]
      i +=1
    end

    return new_string
  end

end

def params_despacer(string)
  i = 0
  new_string = ""
  while i < string.length do
    if string[i] != " "
      new_string << string[i]
    end
    i +=1
  end
  
  return new_string
end

def set_vars(person)
  if @@celeb_hash.has_key?(person)
       @@celeb_name = @@celeb_hash[person][:name]
       @@celeb_website = @@celeb_hash[person][:website]
       @@celeb_picture = @@celeb_hash[person][:picture]
       @@celeb_twitter = @@celeb_hash[person][:twitter]
       @@celeb_soundcloud = @@celeb_hash[person][:soundcloud]
       @@celeb_spotify = @@celeb_hash[person][:spotify]
       @@celeb_youtube = @@celeb_hash[person][:youtube]
       @@celeb_instagram = @@celeb_hash[person][:instagram]
    end
end

@@celeb_hash = {
  "taylorswift" => {:name    => "Taylor Swift",
                    :picture => "http://static.guim.co.uk/sys-images/Guardian/Pix/pictures/2014/8/21/1408618840671/18839f21-608b-4acd-a2aa-a944db3e15e7-2060x1236.jpeg",
                    :twitter => "<a class='twitter-timeline' href='https://twitter.com/taylorswift13' data-widget-id='627111963903041538'>Tweets by @taylorswift13</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','twitter-wjs');</script>",
                    :website => "http://taylorswift.com/",
                    :youtube => "<iframe src='http://www.youtube.com/embed/?listType=user_uploads&list=TaylorSwiftVEVO' width='520' height='600' frameBorder='0'></iframe>",
                    :soundcloud => "<iframe width='95%' height='300' scrolling='no' frameborder='no' src='https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/166985759&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true'></iframe>",
                    :spotify => "<iframe src='https://embed.spotify.com/?uri=spotify%3Aalbum%3A6QdtulV7ptHjdNVnhB63g3' width='520' height='600' frameborder='0' allowtransparency='true'></iframe>",
                    :instagram => "<iframe src='http://snapwidget.com/sc/?u=dGF5bG9yc3dpZnR8aW58MzAwfDN8MTB8fHllc3wyMHxmYWRlT3V0fG9uU3RhcnR8eWVzfHllcw==&ve=300715' title='Instagram Widget' class='snapwidget-widget' allowTransparency='true' frameborder='0' scrolling='no' style='border:none; overflow:hidden; width:95%; height:300px'></iframe>"},
      
       "drake"  => {:name    => "Drake",
                    :picture => "http://djmag.ca/wp-content/uploads/2015/02/drake-remixes.jpg",
                    :twitter => "<a class='twitter-timeline' href='https://twitter.com/Drake' data-widget-id='627111597757100032'>Tweets by @Drake</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','twitter-wjs');</script>",
                    :website => "http://www.drakeofficial.com/",
                    :soundcloud => "<iframe width='95%' height='300' scrolling='no' frameborder='no' src='https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/users/1078461&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true'></iframe>",
                    :youtube => "<iframe src='http://www.youtube.com/embed/?listType=user_uploads&list=DrakeVEVO' width='520' height='600' frameBorder='0'></iframe>",
                    :spotify => "<iframe src='https://embed.spotify.com/?uri=spotify%3Aartist%3A3TVXtAsR1Inumwj472S9r4' width='520' height='600' frameborder='0' allowtransparency='true'></iframe>",
                    :instagram => "<iframe src='http://snapwidget.com/sc/?u=Y2hhbXBhZ25lcGFwaXxpbnwzMDB8M3wxMHx8eWVzfDIwfGZhZGVPdXR8b25TdGFydHx5ZXN8eWVz&ve=300715' title='Instagram Widget' class='snapwidget-widget' allowTransparency='true' frameborder='0' scrolling='no' style='border:none; overflow:hidden; width:95%; height:300px'></iframe>",
                    :news => ""},
  "kanyewest"  => {:name => "Kanye West",
                    :picture => "https://allhiphop.files.wordpress.com/2014/05/kanye-west1.jpg",
                    :twitter => "<a class='twitter-timeline' href='https://twitter.com/kanyewest' data-widget-id='626937700046737408'>Tweets by @kanyewest</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','twitter-wjs');</script>",
                    :website => "http://www.kanyewest.com/",
                    :soundcloud => "<iframe width='95%' height='300' scrolling='no' frameborder='no' src='https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/56887140&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true'></iframe>",
                    :youtube => "<iframe src='http://www.youtube.com/embed/?listType=user_uploads&list=KanyeWestVevo' width='520' height='600' frameBorder='0'></iframe>",
                    :spotify => "<iframe src='https://embed.spotify.com/?uri=spotify%3Aalbum%3A7D2NdGvBHIavgLhmcwhluK' width='520' height='600' frameborder='0' allowtransparency='true'></iframe>",
                    :instagram => "<iframe src='http://snapwidget.com/sc/?u=cHJpdmF0ZWthbnllfGlufDMwMHwzfDEwfHx5ZXN8MjB8ZmFkZU91dHxvblN0YXJ0fHllc3x5ZXM=&ve=300715' title='Instagram Widget' class='snapwidget-widget' allowTransparency='true' frameborder='0' scrolling='no' style='border:none; overflow:hidden; width:95%; height:300px'></iframe>",
                    :news => "",},
      "rihanna"  => {:name => "Rihanna",
                    :picture => "http://popstoptv.com/wp-content/uploads/2014/01/Rihanna-new-album.jpg",
                    :twitter => "<a class='twitter-timeline' href='https://twitter.com/rihanna' data-widget-id='627111244294672384'>Tweets by @rihanna</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','twitter-wjs');</script>",
                    :website => "http://www.rihannanow.com/",
                    :soundcloud => "<iframe width='95%' height='300' scrolling='no' frameborder='no' src='https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/users/7081873&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true'></iframe>",
                    :youtube => "<iframe src='http://www.youtube.com/embed/?listType=user_uploads&list=RihannaVevo' width='520' height='600' frameBorder='0'></iframe>",
                    :spotify => "<iframe src='https://embed.spotify.com/?uri=spotify%3Aalbum%3A0XJya16l3K1J2dEwY19F8z' width='520' height='600' frameborder='0' allowtransparency='true'></iframe>",
                    :instagram => "<iframe src='http://snapwidget.com/sc/?u=cmloYW5uYWRhaWx5fGlufDMwMHwzfDEwfHx5ZXN8MjB8ZmFkZU91dHxvblN0YXJ0fHllc3x5ZXM=&ve=310715' title='Instagram Widget' class='snapwidget-widget' allowTransparency='true' frameborder='0' scrolling='no' style='border:none; overflow:hidden; width:95%; height:300px'></iframe>",
                    :news => "",},
      "beyonce"  => {:name => "Beyoncé",
                    :picture => "http://cdn.playbuzz.com/cdn/6b4354e7-d674-4a44-8150-215c27035f1c/202c8f4a-410f-4b6e-8e07-273ceaf5078d.jpeg",
                    :twitter => "<a class='twitter-timeline' href='https://twitter.com/Beyonce' data-widget-id='626938966806237184'>Tweets by @Beyonce</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','twitter-wjs');</script>",
                    :website => "http://www.beyonce.com/",
                    :soundcloud => "<iframe width='95%' height='300' scrolling='no' frameborder='no' src='https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/users/4293843&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true'></iframe>",
                    :youtube => "<iframe src='http://www.youtube.com/embed/?listType=user_uploads&list=beyonceVEVO' width='520' height='600' frameBorder='0'></iframe>",
                    :spotify => "<iframe src='https://embed.spotify.com/?uri=spotify%3Aalbum%3A2UJwKSBUz6rtW4QLK74kQu' width='520' height='600' frameborder='0' allowtransparency='true'></iframe>",
                    :instagram => "<iframe src='http://snapwidget.com/sc/?u=YmV5b25jZXxpbnwzMDB8M3wxMHx8eWVzfDIwfGZhZGVPdXR8b25TdGFydHx5ZXN8eWVz&ve=310715' title='Instagram Widget' class='snapwidget-widget' allowTransparency='true' frameborder='0' scrolling='no' style='border:none; overflow:hidden; width:95%; height:300px'></iframe>",
                    :news => "",},
      "chancetherapper"  => {:name => "Chance the Rapper",
                    :picture => "https://allhiphop.files.wordpress.com/2013/12/chance-the-rapper.png",
                    :twitter => "<a class='twitter-timeline' href='https://twitter.com/chancetherapper' data-widget-id='627112702410911744'>Tweets by @chancetherapper</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','twitter-wjs');</script>",
                    :website => "http://chanceraps.com/",
                    :soundcloud => "<iframe width='100%' height='300' scrolling='no' frameborder='no' src='https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/users/6969243&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true'></iframe>",
                    :youtube => "<iframe src='http://www.youtube.com/embed/?listType=user_uploads&list=ChanceThaRapper' width='520' height='600' frameBorder='0'></iframe>",
                    :spotify => "<iframe src='https://embed.spotify.com/?uri=spotify%3Aalbum%3A1OsCenkEFxeWn514wZ77EG' width='520' height='600' frameborder='0' allowtransparency='true'></iframe>",
                    :instagram => "<iframe src='http://snapwidget.com/sc/?u=Y2hhbmNldGhlcmFwcGVyfGlufDMwMHwzfDEwfHx5ZXN8MjB8ZmFkZU91dHxvblN0YXJ0fHllc3x5ZXM=&ve=310715' title='Instagram Widget' class='snapwidget-widget' allowTransparency='true' frameborder='0' scrolling='no' style='border:none; overflow:hidden; width:100%; height:300px'></iframe>",
                    :news => "",},
      "lorde"  => {:name => "Lorde",
                    :picture => "http://www.billboard.com/files/styles/promo_650/public/media/lorde-2013-james-k-lowe-billboard-650.jpg",
                    :twitter => "<a class='twitter-timeline' href='https://twitter.com/lordemusic' data-widget-id='627121606125617152'>Tweets by @lordemusic</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','twitter-wjs');</script>",
                    :website => "http://lorde.co.nz/",
                    :soundcloud => "<iframe width='95%' height='300' scrolling='no' frameborder='no' src='https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/users/27622444&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true'></iframe>",
                    :youtube => "<iframe src='http://www.youtube.com/embed/?listType=user_uploads&list=LordeMusic' width='520' height='600' frameBorder='0'></iframe>",
                    :spotify => "<iframe src='https://embed.spotify.com/?uri=spotify%3Aalbum%3A6rnzvZhe3PA57xKcKLRtJ6' width='520' height='600' frameborder='0' allowtransparency='true'></iframe>",
                    :instagram => "<iframe src='http://snapwidget.com/sc/?u=bG9yZGVtdXNpY3xpbnwzMDB8M3wxMHx8eWVzfDIwfGZhZGVPdXR8b25TdGFydHx5ZXN8eWVz&ve=310715' title='Instagram Widget' class='snapwidget-widget' allowTransparency='true' frameborder='0' scrolling='no' style='border:none; overflow:hidden; width:95%; height:300px'></iframe>",
                    :news => "",},
      "jcole"  => {:name => "J. Cole",
                    :picture => "http://img.cache.vevo.com/Content/VevoImages/video/22521441C8E1560939E10439D05B9931.jpg",
                    :twitter => "<a class='twitter-timeline' href='https://twitter.com/JColeNC' data-widget-id='627123643668123648'>Tweets by @JColeNC</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','twitter-wjs');</script>",
                    :website => "http://www.jcolemusic.com/",
                    :soundcloud => "<iframe width='95%' height='300' scrolling='no' frameborder='no' src='https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/users/958563&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true'></iframe>",
                    :youtube => "<iframe width='520' height='600' src='https://www.youtube.com/embed/eCGV26aj-mM?list=PL68938922BD14537F' frameborder='0' allowfullscreen></iframe>",
                    :spotify => "<iframe src='https://embed.spotify.com/?uri=spotify%3Aalbum%3A7viNUmZZ8ztn2UB4XB3jIL' width='520' height='600' frameborder='0' allowtransparency='true'></iframe>",
                    :instagram => "<iframe src='http://snapwidget.com/sc/?u=cmVhbGNvbGV3b3JsZHxpbnwzMDB8M3wxMHx8eWVzfDIwfGZhZGVPdXR8b25TdGFydHx5ZXN8eWVz&ve=310715' title='Instagram Widget' class='snapwidget-widget' allowTransparency='true' frameborder='0' scrolling='no' style='border:none; overflow:hidden; width:95%; height:300px'></iframe>",
                    :news => "",},
      "bigsean"  => {:name => "Big Sean",
                    :picture => "http://imd.ulximg.com/image/src/cover/1410729823_6dee8c8ad087d7e5e05080be548cfd66.jpg/9cad57a9abbd3bb3570d8cc6511cdb16/1410729823_sean_e1394067042621_90.jpg",
                    :twitter => "<a class='twitter-timeline' href='https://twitter.com/BigSean' data-widget-id='627126392665305089'>Tweets by @BigSean</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','twitter-wjs');</script>",
                    :website => "http://uknowbigsean.com/",
                    :soundcloud => "<iframe width='95%' height='300' scrolling='no' frameborder='no' src='https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/users/4803918&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true'></iframe>",
                    :youtube => "<iframe src='http://www.youtube.com/embed/?listType=user_uploads&list=BigSeanVEVO' width='520' height='600' frameBorder='0'></iframe>",
                    :spotify => "<iframe src='https://embed.spotify.com/?uri=spotify%3Aalbum%3A1j2x7FJXTgUT0X5hZ8TDXE' width='520' height='600' frameborder='0' allowtransparency='true'></iframe>",
                    :instagram => "<iframe src='http://snapwidget.com/sc/?u=Ymlnc2VhbnxpbnwzMDB8M3wxMHx8eWVzfDIwfGZhZGVPdXR8b25TdGFydHx5ZXN8eWVz&ve=310715' title='Instagram Widget' class='snapwidget-widget' allowTransparency='true' frameborder='0' scrolling='no' style='border:none; overflow:hidden; width:95%; height:300px'></iframe>",
                    :news => "",},
      "arianagrande"  => {:name => "Ariana Grande",
                    :picture => "http://a57.foxnews.com/global.fncstatic.com/static/managed/img/Entertainment/876/493/ariana%20grande%20reuters%20660.jpg?ve=1&tl=1",
                    :twitter => "<a class='twitter-timeline' href='https://twitter.com/ArianaGrande' data-widget-id='627128018817949696'>Tweets by @ArianaGrande</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','twitter-wjs');</script>",
                    :website => "http://www.arianagrande.com/",
                    :soundcloud => "<iframe width='95%' height='300' scrolling='no' frameborder='no' src='https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/users/20558712&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true'></iframe>",
                    :youtube => "<iframe src='http://www.youtube.com/embed/?listType=user_uploads&list=ArianaGrandeVevo' width='520' height='600' frameBorder='0'></iframe>",
                    :spotify => "<iframe src='https://embed.spotify.com/?uri=spotify%3Aalbum%3A6EVYTRG1drKdO8OnIQBeEj' width='520' height='600' frameborder='0' allowtransparency='true'></iframe>",
                    :instagram => "<iframe src='http://snapwidget.com/sc/?u=YXJpYW5hZ3JhbmRlfGlufDMwMHwzfDEwfHx5ZXN8MjB8ZmFkZU91dHxvblN0YXJ0fHllc3x5ZXM=&ve=310715' title='Instagram Widget' class='snapwidget-widget' allowTransparency='true' frameborder='0' scrolling='no' style='border:none; overflow:hidden; width:95%; height:300px'></iframe>",
                    :news => "",},
      
#       "artist"  => {:name => "",
#                     :picture => "",
#                     :twitter => "",
#                     :website => "",
#                     :soundcloud => "",
#                     :youtube => "<iframe src='http://www.youtube.com/embed/?listType=user_uploads&list=YOURCHANNELNAME' width='520' height='600' frameBorder='0'></iframe>",
#                     :spotify => "",
#                     :instagram => "<iframe src='http://snapwidget.com/sc/?u=cHJpdmF0ZWthbnllfGlufDMwMHwzfDEwfHx5ZXN8MjB8ZmFkZU91dHxvblN0YXJ0fHllc3x5ZXM=&ve=300715' title='Instagram Widget' class='snapwidget-widget' allowTransparency='true' frameborder='0' scrolling='no' style='border:none; overflow:hidden; width:95%; height:300px'></iframe>",
#                     :news => "",},
        
}


