class Event < ApplicationRecord
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
end
