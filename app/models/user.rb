class User < ApplicationRecord
    belongs_to :city, optional: true
    has_many :gossips
    validates_associated :gossips
    has_many :comments
    validates_associated :comments
    validates_presence_of :first_name, :last_name, :email
    has_secure_password
end
