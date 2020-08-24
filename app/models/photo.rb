class Photo < ApplicationRecord
    # belongs_to :user 
    has_many :profiles
    has_many :users, through: :profiles
end
