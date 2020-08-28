class Profile < ApplicationRecord
    #works
    has_many :photos
    has_many :users, through: :photos

    def self.find_or_create_by_profile(current_user_id) #returns the instance of the user
        # profile = Profile.find_by(user_id: current_user.id)
        # oauth_email = auth_hash["info"]["email"]
        self.where(user_id: current_user_id).first_or_create do |user|
          byebug
            # user.username = auth_hash["info"]["name"] 
            # user.password = SecureRandom.hex
        end
      end 

    # has_many :photos
    # has_many :users, through: :photos

end
