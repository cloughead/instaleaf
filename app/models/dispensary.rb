class Dispensary < ApplicationRecord
  ratyrate_rateable 'service'
  has_many :dispensaryhours

  enum kind: { storefront: 0, smoke_spot: 1, doctor: 2 }
end
