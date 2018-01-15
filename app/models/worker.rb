class Worker < ApplicationRecord

  validates :first_name, presence: true
  validates :status, presence: true
end
