require 'faker'

10.times do Article.create(
    title: Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph
)
end