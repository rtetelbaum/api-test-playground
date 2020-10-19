require 'json'
require 'rest-client'

Trail.delete_all

api_response = RestClient.get("https://www.hikingproject.com/data/get-trails?lat=40.727811&lon=-73.954511&maxDistance=100&maxResults=100&key=200950915-5332f78ae1a5478c5458943a751c5053")

api_data = JSON.parse(api_response)

api_data["trails"].each do |trail|
	name = trail["name"]
	summary = trail["summary"]
	difficulty = trail["difficulty"]
	length = trail ["length"]
	stars = trail["stars"]
	location = trail["location"]
	img_medium = trail["imgMedium"]
	Trail.create(name: name, summary: summary, difficulty: difficulty, length: length, stars: stars, location: location, image: img_medium)
end