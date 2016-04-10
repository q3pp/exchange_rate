class ExchangeUpdate < ApplicationRecord

  validates :rate, :time, presence: true
  validate :time_acceptance, on: :create

  def time_acceptance
    if time && ( time < Time.now())
      errors.add(:time, 'update time must be greater than time now')
    end
  end

end
