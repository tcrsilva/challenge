class History < ApplicationRecord
    validates :today, presence: true
    validates :first_entry, presence: true
    validates :second_exist, presence: true
    
end
