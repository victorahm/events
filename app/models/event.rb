class Event < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, presence: true
  validates :venue, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true
  validates :event_at, presence: true

  has_rich_text :description
  has_one_attached :image
end
