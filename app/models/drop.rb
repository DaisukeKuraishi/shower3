class Drop < ApplicationRecord

  validates :title, presence: true
  validates :reason, presence: true
  validates :p_key, presence: true, uniqueness: true, length: { is: 42 }
  
end
