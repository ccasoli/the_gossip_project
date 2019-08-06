class City < ApplicationRecord
    has_many :users
    validates_associated :users
end
