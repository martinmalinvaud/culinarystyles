class Culinarystyle < ApplicationRecord
  has_many :dishes, dependent: :destroy
end
