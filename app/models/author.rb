class Author < ApplicationRecord
  has_many :books
  has_many :victims, through: :books
  has_many :crimes, through: :books
end
