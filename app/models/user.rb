class User
  include Mongoid::Document

  has_many :sessions
  has_many :bookings
  has_many :listings
end
