class HomeController < ApplicationController
  def index
    @events = Event.filtered(query_params)
  end

  private
  def query_params
  query_params = params
  query_params ? query_params.permit(:name, :address, :start_date) : {}
  end
end
