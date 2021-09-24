class Event < ApplicationRecord

    before_update :generate_timestamp

  def generate_timestamp
    self.update_required_timestamp = DateTime.now
  end

end
