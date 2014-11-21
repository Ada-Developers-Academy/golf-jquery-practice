Player.destroy_all
Club.destroy_all
PlayerClub.destroy_all

Player.create(name: Faker::Name.name)

categories = %w(Iron Driver Putter Woods Hybrid)

15.times do |n|
  handed = rand(3) == 0 ? "left" : "right"
  Club.create(name: Faker::App.name, handed: handed, category: categories.sample)
end
