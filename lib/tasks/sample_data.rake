require 'rubygems'
require 'faker'


namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    1000.times do |n|
      name  = Faker::Name.name
      description = Faker::Lorem.sentence(word_count = 4, supplemental = false) 
      price = Random.rand(100 )
      Product.create!(name: name,
                   description: description,
                   price: price,
                   category_id: 1)
    end
  end
end