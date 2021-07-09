puts "Clearing old data..."
Cohort.destroy_all
Student.destroy_all

# This will create 5 cohorts using a random date
puts "Seeding cohorts..."
c1 = Cohort.create(
  name: "nyc-dumbo-web-1",
  current_mod: rand(1..5)
)
c2 = Cohort.create(
  name: "nyc-dumbo-web-2",
  current_mod: rand(1..5)
)
c3 = Cohort.create(
  name: "nyc-dumbo-web-3",
  current_mod: rand(1..5)
)
c4 = Cohort.create(
  name: "nyc-dumbo-web-4",
  current_mod: rand(1..5)
)
c5 = Cohort.create(
  name: "nyc-dumbo-web-5",
  current_mod: rand(1..5)
)

puts "Seeding students..."
# TODO: create seed data for students
20.times do
  Student.create(name: Faker::Name.name, age: rand(0..30), email: "#{Faker::Name.name}@gmail.com", cohort_id: Cohort.ids.sample)
end

puts "Done!"