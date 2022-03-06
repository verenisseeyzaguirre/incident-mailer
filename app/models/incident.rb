class Incident < ApplicationRecord
  extend FriendlyId
  friendly_id :hashid, use: :slugged

  before_validation :set_hashid, prepend:true, if: Proc.new { |incident| incident.hashid.nil? }

  private

  def set_hashid
    self.hashid = SecureRandom.urlsafe_base64(8)
  end

end
