class Customer < ApplicationRecord
  has_many :users

  validates :name, presence: true
  validates :dob, presence: true
  validates :mobile_phone, presence: true
  validates :email, presence: true
end
# def self.ransackable_attributes(auth_object = nil)
#   ["name"]
# end
