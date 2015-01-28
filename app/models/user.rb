class User < ActiveRecord::Base

has_many :itineraries, dependent: :destroy
validates :username, presence: true, uniqueness: true
validates_presence_of :password
validates_presence_of :email_address
validates :email_address, uniqueness: true
has_secure_password

end