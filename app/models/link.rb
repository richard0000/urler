class Link < ApplicationRecord
  validates :url, presence: true
  validates :slug, uniqueness: true
  before_save :generate_slug

  def generate_slug
    slug = SecureRandom.uuid
  end
end
