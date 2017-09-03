class Sheet < ApplicationRecord
  validates :title, :artist, :genre, presence: true
end
