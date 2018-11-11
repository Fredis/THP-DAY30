class FlightsController < ApplicationController
 
  def index
	 	@airport = Airport.all
	 	if params[:departure_airport_code]
			 @flight = Flight.where("departure_airport_id = ? AND arrival_airport_id = ? AND departure_date = ?", params[:departure_airport_code], params[:arrival_airport_code], params[:departure_date])
	 	end



  end

end
