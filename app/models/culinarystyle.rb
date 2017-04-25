class Culinarystyle < ApplicationRecord
  has_many :dishes, dependent: :destroy
  has_attachment :piccard
  has_attachment :banerpic
  has_attachment :fontpic
end
