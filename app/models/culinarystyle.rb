class Culinarystyle < ApplicationRecord
  mount_uploader :piccard, PhotoUploader
  has_many :dishes, dependent: :destroy

end
