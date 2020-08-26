class Profile < ApplicationRecord
    has_many :users
    belongs_to :photo
end
