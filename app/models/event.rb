class Event < ApplicationRecord
    scope :search, ->(term) { where(" #{conditions[:term]} LIKE ?", "% #{term} %" ) }
    scope :address, ->(address) { where("address LIKE ?", "% #{address} %" ) }
    scope :start_date, ->(start_date) { where("name LIKE ?", "% #{start_date} %" ) }
    #scope :host_organization, ->(host_organization) { where("name LIKE ?", "% #{host_organization} %" ) } 
    
    scope :eventname, ->(name) { where("name LIKE ?", "%#{name}%" ) if name}
    def self.search(conditions)

            #loop through the params and check which ones have been submitted
            #if they have been submitte only then summon the corresponding scope on the event method. 
            #if none are present then events.all
            #look into dynamic programming(the code writes itself as it executes) 

            @conditions = conditions
            p @conditions
            @name = conditions[:names].to_s
            p @name
            @address = conditions[:address].to_s
            @start_date = conditions[:start_date].to_s
            @array = [@name, @address, @start_date]
            @new_array = @array.sort_by(&:length)
            p @new_array
            x = 0
            if @name.length > 0 or @address.length > 0 or @start_date.length > 0

                @event = Event.search(@new_array[0]).search(@new_array[1]).search(@new_array[2])

            else 
                @event = Event.all
            end 

    end 

end
