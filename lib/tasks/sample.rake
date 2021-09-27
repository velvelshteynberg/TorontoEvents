require 'active_support/core_ext'

task :delete => :environment do
  @events = Event.where(does_require_update: true)
    @events.each do |event|
      if event.start_date < DateTime.now.to_date or DateTime.now >= event.update_required_timestamp + 3.days  
            event.destroy 
      else 
        puts 'start date has not passed and it has not been 3 days since update was required'
      end 
    end  
    puts 'succesfully deleted events'
  end 

task :great do 
  puts "Great day after all"
end 

