require 'active_support/core_ext'

task :delete => :environment do
  @events = Event.where(does_require_update: true)
    @events.each do |event|
      if event.start_date < DateTime.now.to_date
            event.destroy
            if DateTime.now >= event.update_required_timestamp + 3.days  
              event.destroy
            else
              puts 'It hasnt been three days yet'
            end 
      else 
        puts 'start date hasnt passed'
      end 
    end 
end 

task :great do 
  puts Event.all
end 

