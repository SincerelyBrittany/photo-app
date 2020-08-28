class Profile < ApplicationRecord
    has_many :users
    has_many :photos
end
