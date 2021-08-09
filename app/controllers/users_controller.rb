class UsersController < ApplicationController

  def index
    @instruments = current_user.instruments
    @bookings = current_user.bookings
  end

  def show
    @instrument = Instrument.find(params[:instrument_id])
  end

end
