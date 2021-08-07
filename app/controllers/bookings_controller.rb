class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @instrument = Instrument.find(params[:instrument_id])
  end

  def create
    @instrument = Instrument.find(params[:instrument_id])
    @booking = Booking.new(booking_params)
    @booking.user = User.first
    @booking.instrument = @instrument
    if @booking.save
      redirect_to instrument_bookings_path(@instrument)
    else
      render "bookings/new"
    end
  end

  # def show
  #   @booking = Booking.find(params[:instrument_id])
  # end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
