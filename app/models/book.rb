class Book < ApplicationRecord
  belongs_to :author
  belongs_to :victim
  belongs_to :crime
end
