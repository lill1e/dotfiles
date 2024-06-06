city=4839366
unit=imperial
lang=en
url="api.openweathermap.org/data/2.5/weather?id=${city}&appid=${weather_api_key}&units=imperial&lang=en"
curl -s $url -o ~/.config/conky/cache/weather.json
