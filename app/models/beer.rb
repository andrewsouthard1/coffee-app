class Beer < ApplicationRecord
  validates :name, presence: true
  validates :hop, presence: true
  validates :ibu, presence: true
end
