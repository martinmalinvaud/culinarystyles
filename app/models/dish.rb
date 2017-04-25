class Dish < ApplicationRecord
  belongs_to :culinarystyle
  has_attachment :photo
end
