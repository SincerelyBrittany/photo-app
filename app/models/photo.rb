class Photo < ApplicationRecord
    # validates :photo, uniqueness: true, presence: true
    #works
    belongs_to :user
    belongs_to :profile

  

    # has_many :profiles 
    # has_many :users, through: :profiles
    

end
