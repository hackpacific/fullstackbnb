class User
  include Mongoid::Document

  field :email, type: String

  has_many :sessions
  has_many :bookings
  has_many :listings
end
