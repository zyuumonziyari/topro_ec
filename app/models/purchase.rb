class Purchase < ApplicationRecord

    validates :name, {presence: true}
    validates :email, {presence: true}
    validates :address, {presence: true}
   



    def products
        return Product.find_by(id: self.product_id)
    
    
    
    end
end
