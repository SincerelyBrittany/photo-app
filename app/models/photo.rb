class Photo < ApplicationRecord
    # belongs_to :user 
    validates :photo, uniqueness: true, presence: true
    has_many :profiles
    # has_many :users, through: :profiles
end
