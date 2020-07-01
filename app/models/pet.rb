class Pet < ApplicationRecord
  validates_presence_of :name, :age, :sex, :image
end
