class Event < ApplicationRecord 
  
  scope :filtered, ->(query_params) { Event::Filter.new.filter(self, query_params) }  
  
    has_and_belongs_to_many :attending_users,
    join_table: 'events_users',
    class_name: 'User',
    inverse_of: :events_users

    has_and_belongs_to_many :bookmarked_users, 
    join_table: 'bookmarked_events',
    class_name: 'User',
    inverse_of: :bookmarked_events

    belongs_to :user
    belongs_to :host_organization
    belongs_to :caterer

    validates :name, :start_date, :end_date, :start_time, :end_time, :address, :host_organization, :caterer, presence: true
    validate :start_date_cannot_be_in_the_past
    validate :end_date_cannot_be_in_the_past
    validate :end_date_after_start_date
    validate :times_cannot_be_the_same

    def start_date_cannot_be_in_the_past
        if start_date.present? && start_date < Date.today
          errors.add(:start_date, "can't be in the past")
        end
      end

      def end_date_cannot_be_in_the_past
        if end_date.present? && end_date < Date.today
          errors.add(:end_date, "can't be in the past")
        end
      end

     def end_date_after_start_date
         return if end_date.blank? || start_date.blank?
      if end_date < start_date
      errors.add(:end_date, "must be after the start date")
    end
  end

    def times_cannot_be_the_same
      if start_date == end_date && start_time >= end_time
       errors.add(:times, "cannot be the same and end time cannot be earlier than start time")
    end
    end 

end
