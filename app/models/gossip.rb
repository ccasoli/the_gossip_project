class Gossip < ApplicationRecord
    belongs_to :user
    validates_presence_of :title, :content
    has_many :comments
    validates_associated :comments
end
