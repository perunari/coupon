class Salecoupon < ApplicationRecord
  belongs_to :shop, optional: true
end
