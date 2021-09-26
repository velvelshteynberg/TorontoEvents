namespace :sample do
  desc "Printing a greeting to amazing people"
  task :print do
    Event.delete_all
  end
end


