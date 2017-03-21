get '/' do
  url = "http://api.openweathermap.org/data/2.5/weather?units=imperial&q=Chicago&APPID=8b14638fc999d666f06c49bdd4eb725f"
  uri = URI.parse(url)
  response = Net::HTTP.get_response(uri).body
  json_object = JSON.parse(response)
  @temp = json_object["main"]["temp"]
  @city = json_object["name"]
  erb :index
end

post '/songs' do
  if params[:moods] == "energetic"
    erb :'_player'
  elsif params[:moods] == "happy"
    "https://embed.spotify.com/?uri=spotify:track:0jx8zY5JQsS4YEQcfkoc5C"
  elsif params[:moods] == "hopeful"
    "https://embed.spotify.com/?uri=spotify:track:3ZLyt2ndLFBh148XRYjYYZ"
  elsif params[:moods] == "reflective"
    "https://embed.spotify.com/?uri=spotify:track:6m9qPYXmhge2QhBLfFKnVF"
  else
    "something bad happened"
  end
end
