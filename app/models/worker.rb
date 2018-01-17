class Worker < ApplicationRecord
has_many :shifts, dependent: :destroy

  validates :first_name, presence: true
  validates :status, presence: true

  def name
    "#{first_name} (#{status})"
  end

end
