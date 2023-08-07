class Cart < ApplicationRecord

    #belongs_to :product

def products
    return Product.find_by(id: self.product_id)



end



end