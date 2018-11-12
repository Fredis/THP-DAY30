class BookingController < ApplicationController
	
  def new
  	@booking = Booking.new
  end

  def create
  	puts params
  end

end
