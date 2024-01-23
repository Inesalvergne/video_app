# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Video.destroy_all

puts "Creating videos..."
video_1 = {title: "Video 1", description: "wohoo!", dropbox_path: "/le_wagon.mp4" }
video_2 =  {title: "Video 2", description: "trop bien", dropbox_path: "/le_wagon.mp4"}

[video_1, video_2].each do |attributes|
  video = Video.create!(attributes)
  puts "Created #{video.title}"
end

puts "The seed is ready ✅"
