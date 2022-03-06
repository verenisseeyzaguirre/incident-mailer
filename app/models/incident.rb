class Incident < ApplicationRecord
  has_many_attached :photos
  has_rich_text :description

  extend FriendlyId
  friendly_id :hashid, use: :slugged

  before_validation :set_hashid, prepend:true, if: Proc.new { |incident| incident.hashid.nil? }

  private

  def set_hashid
    self.hashid = SecureRandom.urlsafe_base64(8)
  end

end
