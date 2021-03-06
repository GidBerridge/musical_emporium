class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @instrument = Instrument.find(params[:instrument_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @instrument = Instrument.find(params[:instrument_id])
    @booking.instrument = @instrument
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "bookings/new"
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
