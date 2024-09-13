class User < ApplicationRecord
  # Devise configurations
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # belongs_to :customer
  enum role: { admin: "admin", operator: "operator" }
end
