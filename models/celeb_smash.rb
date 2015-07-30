# @celeb_hash = {
#   "Taylor Swift" => {:name    => "Taylor Swift",
#               :Twitter => "<blockquote class='twitter-tweet' lang='en'><p lang='en' dir='ltr'>&quot;Your little hand&#39;s wrapped around my finger and it&#39;s so quiet in the world tonight...&quot; <a href='http://t.co/nGaWkKHmJk'>pic.twitter.com/nGaWkKHmJk</a></p>&mdash; Taylor Swift (@taylorswift13) <a href='https://twitter.com/taylorswift13/status/626153646724550656'>July 28, 2015</a></blockquote><script async src='//platform.twitter.com/widgets.js' charset='utf-8'></script>",
#               :website => "http://taylorswift.com/",
#               :youtube => "<iframe width='560' height='315' src='https://www.youtube.com/embed/QcIy9NiNbmo' frameborder='0' allowfullscreen></iframe>"},
#   "Drake"  => {:name    => "Drake",
#               :Twitter => "<blockquote class='twitter-tweet' lang='en'><p lang='und' dir='ltr'><a href='https://t.co/jWMfEPxBqM'>https://t.co/jWMfEPxBqM</a></p>&mdash; Drizzy (@Drake) <a href='https://twitter.com/Drake/status/626309606810128384'>July 29, 2015</a></blockquote><script async src='//platform.twitter.com/widgets.js' charset='utf-8'></script>",
#               :website => "http://www.drakeofficial.com/",
#               :youtube => "<iframe width='420' height='315' src='https://www.youtube.com/embed/TjaMxaH4kjg' frameborder='0' allowfullscreen></iframe>"}

# }

def print_celeb_name(hash)
  if hash.has_key?(:name)
    return hash[:name]
  end
end

def print_celeb_info(hash)
  celeb_info_array = []
    hash.each_value do |value|
      celeb_info_array << value
    end
  return celeb_info_array
end

# params = {"person" => "Taylor Swift"}
# person = params["person"]

# if @celeb_hash.has_key?(person)
#    puts print_celeb_name(@celeb_hash[person])
#    puts print_celeb_info(@celeb_hash[person])
# end





