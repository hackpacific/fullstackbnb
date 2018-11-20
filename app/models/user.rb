class User
  include Mongoid::Document

  field :email, type: String
  field :first_name, type: String
  field :last_name, type: String

  has_many :sessions
  has_many :bookings
  has_many :listings
end
