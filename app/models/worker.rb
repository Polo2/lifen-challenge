class Worker < ApplicationRecord
has_many :shifts, dependent: :destroy

  validates :first_name, presence: true
  validates :status, presence: true


end
