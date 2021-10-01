class Event < ApplicationRecord

    scope :filtered, ->(query_params) { Event::Filter.new.filter(self, query_params) }



end
