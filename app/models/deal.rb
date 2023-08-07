class Deal < ApplicationRecord
    validates :card_name, {presence: true}
    validates :due_number, {presence: true}
    validates :card_number, {presence: true}
    validates :card_password, {presence: true}



end
