class Session
  include Mongoid::Document

  belongs_to :user
end
