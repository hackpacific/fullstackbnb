class Token
  include Mongoid::Document
  include Mongoid::Timestamps

  # Accessor
  attr_accessor :duration

  # Attributes
  field :code, type: String
  field :active, type: Boolean, default: true
  field :expires_at, type: DateTime

  # Callbacks
  before_create :generate_code
  before_create :set_expires_at

  # Associations
  belongs_to :user, index: true, optional: true

  # "live" token is one that's both active and not expired yet
  def live?
    (self.expires_at.utc >= Time.now.utc) && self.active
  end

  private

  def generate_code
    self.code = SecureRandom.urlsafe_base64
  end

  def set_expires_at
    self.duration ||= 20.minutes # default duration is 20 minutes
    self.expires_at ||= self.duration.from_now.utc
  end
end
