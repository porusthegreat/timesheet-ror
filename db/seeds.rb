5.times do
  Project.create({title: Faker::Book.title,
                  description: Faker::Lorem.sentence,
                  status: Faker::Hacker.verb,
                  owner: Faker::Book.author,
                  tech_stack: Faker::App.name,
                  github_link: Faker::App.name
                 })
end