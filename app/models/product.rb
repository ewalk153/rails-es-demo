class Product < ApplicationRecord
    update_index('products') { self }
end
