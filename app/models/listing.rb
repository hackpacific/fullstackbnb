class Listing
  include Mongoid::Document

  belongs_to :user
  has_many :bookings
end
