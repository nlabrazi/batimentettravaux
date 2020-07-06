roadwork.destroy_all

roadwork_names = [
  "French roadwork",
  "My Cute Balcony",
  "English roadwork",
  "Flowered patio",
  "roadwork in Japan",
  "Walk among flowers"
]

roadwork_names.each do |roadwork_name|
  roadwork_request = RestClient.get("https://source.unsplash.com/1200x700/?roadwork")
  roadwork = Roadwork.new(
      name: roadwork_name,
      banner_url: roadwork_request.request.url
    )
  roadwork.save!
  3.times do
    project_request = RestClient.get("https://source.unsplash.com/400x300/?flower")
    project = Project.new(
      name: Faker::FunnyName.name,
      image_url: project_request.request.url
    )
    Project.roadwork = roadwork
    Project.save!
    sleep(2)
  end
end
