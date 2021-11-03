class Link < ApplicationRecord
  validates :url, presence: true
  validates :slug, uniqueness: true
  before_validation :generate_slug

  def generate_slug
    self.slug = SecureRandom.hex
  end
end
