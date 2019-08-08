class Comment < ApplicationRecord
    belongs_to :gossip
    belongs_to :user
    validates_presence_of :content
end
