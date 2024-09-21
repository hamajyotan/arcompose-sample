class Profile < ApplicationRecord
  belongs_to :account
  validates :name, :age, presence: true
end
