class Photo < ApplicationRecord
    # belongs_to :user 
    validates :photo, uniqueness: true, presence: true
    belongs_to :profile
    # has_many :users, through: :profiles
end
