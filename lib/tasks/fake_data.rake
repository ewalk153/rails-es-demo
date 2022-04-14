
namespace :fake_data do
  desc "Generate fake data"
  task create: :environment do
    num = ENV['NUM'].to_i || 50
    Chewy.strategy(:atomic) do
      num.times do
        Product.create(
          title: Faker::Commerce.product_name,
          body: Faker::Hipster.sentences.sample,
          price: Faker::Commerce.price,
          published_at: Faker::Date.backward(days: 50),
        )
      end
    end
  end

end
