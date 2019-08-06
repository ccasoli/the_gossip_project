class User < ApplicationRecord
    belongs_to :city
    has_many :gossips
    validates_associated :gossips
    validates_presence_of :first_name, :last_name, :city_id
end
