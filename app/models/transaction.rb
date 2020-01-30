class Transaction < ApplicationRecord
  validates :name, presence: true
  after_initialize :stop_it

  def stop_it
    Rails.logger.debug self.inspect
  end
end
