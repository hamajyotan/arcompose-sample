class Account < ApplicationRecord
  has_one :profile
  validates :email, presence: true
end
