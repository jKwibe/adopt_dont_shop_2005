class Pet < ApplicationRecord
  validates_presence_of :name, :age, :sex, :image, :description, :status
  belongs_to :shelter
end
