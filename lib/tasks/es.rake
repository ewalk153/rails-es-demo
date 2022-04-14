
namespace :es do
    desc "Reload product data into es"
    task reload: :environment do
      ProductsIndex.import
    end
  end
  