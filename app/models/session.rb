class Session
  include Mongoid::Document
  include Mongoid::Timestamps

  # Attributes
  field :token, type: String

  # Callbacks
  before_create :generate_session_token

  # Associations
  belongs_to :user

  private

  def generate_session_token
    self.token = SecureRandom.urlsafe_base64
  end
end
