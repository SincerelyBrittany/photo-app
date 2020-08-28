class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # has_one_attached :avatar
    # works
    # has_many :profiles
    has_many :photos, dependent: :destroy
    # has_many :photos, through: :photos
    belongs_to :profile

    # belong_to :profile
    # has_many :photos, dependent: :destroy
    # has_many :companies, through: :comments
 
end
