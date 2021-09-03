class Event < ApplicationRecord
    scope :names, ->(name) { where("name LIKE ?", "% #{name} %" ) }
    scope :address, ->(address) { where("address LIKE ?", "% #{address} %" ) }
    scope :start_date, ->(start_date) { where("name LIKE ?", "% #{start_date} %" ) }
    scope :host_organization, ->(host_organization) { where("name LIKE ?", "% #{host_organization} %" ) } 
    
    scope :eventname, ->(name) { where("name LIKE ?", "%#{name}%" ) if name}
    def self.search(conditions)

            #loop through the params and check which ones have been submitted
            #if they have been submitte only then summon the corresponding scope on the event method. 
            #if none are present then events.all
            #look into dynamic programming(the code writes itself as it executes) 


        if conditions[:name]
            @one = []
            @one.push(Event.names(term1))
        elsif term2.length > x
            @two = []
            @two.push(Event.address(term2))
        elsif term3.length > x
            @three = []
            @three.push(Event.start_date(term3))
        elsif term4.length > x
            @four = []
            @four.push(Event.names(term4))
        elsif term1.length == x && term2.length == x && term3.length == x && term4.length == x
            @events = Event.all
        end 
        puts @one

        array = [@one, @two, @three, @four]
        @events = []
        array.each do |variable|
            if variable.empty? == false
                variable.each do |individual_event|
                        unless @events.include?(individual_event)
                        @events.push(individual_event)
                        end 
                end
            end 
        end

        return @events



    end 

end
