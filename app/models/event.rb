class Event < ApplicationRecord
    scope :search, ->(term1, term2) { where("#{term1} LIKE ?", "% #{term2} %" ) }
    scope :address, ->(address) { where("address LIKE ?", "% #{address} %" ) }
    scope :start_date, ->(start_date) { where("name LIKE ?", "% #{start_date} %" ) }
    #scope :host_organization, ->(host_organization) { where("name LIKE ?", "% #{host_organization} %" ) } 
    
    scope :eventname, ->(name) { where("name LIKE ?", "%#{name}%" ) if name}
    def self.search(conditions)

            #loop through the params and check which ones have been submitted
            #if they have been submitte only then summon the corresponding scope on the event method. 
            #if none are present then events.all
            #look into dynamic programming(the code writes itself as it executes) 

            @name = conditions[:names].to_s
            @address = conditions[:address].to_s
            @start_date = conditions[:start_date].to_s
            @array = [{name: @name}, {address: @address}, {start_date: @start_date}]
            @new_array = @array.sort_by(&:length)
            x = 0
            if @name or @address or @start_date
                p 'if condition'
                @event = Event.search( @new_array[0] ).search(@new_array[1]).search(@new_array[2])

            else 
                p 'else condition'
                @event = Event.all
            end 

    end 

end
