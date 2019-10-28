class Property < ApplicationRecord
    validates :name, presence: true, length: {minimum: 1}
    validates :price, presence: true, length: {minimum: 1}
    validates :address, presence: true, length: {minimum: 1}
    validates :age_building, presence: true, inclusion: {in:1..99}
    validates :note, presence: true, length: {in:1..500}
end
