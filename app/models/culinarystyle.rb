class Culinarystyle < ApplicationRecord
  has_many :dishes, dependent: :destroy
  has_attachment :piccard
end
