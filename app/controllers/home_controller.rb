class HomeController < ApplicationController
  def index
    @events = Event.where(is_approved: true).order(start_date: :desc).take(4)
  end

end
