class Tag < ApplicationRecord
  has_many :messages, dependent: :destroy
end
