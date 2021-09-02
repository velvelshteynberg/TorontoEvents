class Event < ApplicationRecord

    scope :events, ->(name) { where("name LIKE ?", "% #{name} %" ) }
    scope :events, ->(address) { where("address LIKE ?", "% #{address} %" ) }
    scope :events, ->(start_date) { where("name LIKE ?", "% #{start_date} %" ) }
    scope :events, ->(host_organization) { where("name LIKE ?", "% #{host_organization} %" ) }

    def self.search(term1)
        
        if term1.empty? == false
            @events = Event.events(term1)
        else 
            @events = Event.all
        end

    end 

end
