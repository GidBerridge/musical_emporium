class InstrumentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:query].present?
      @instruments = Instrument.where(instrument_type: params[:query].capitalize)
    else
      @instruments = Instrument.all
    end

    # the `geocoded` scope filters only users with coordinates (latitude & longitude)
    # @markers = @instruments.geocoded.map do |instrument|
    #   {
    #     lat: instrument.latitude,
    #     lng: instrument.longitude
    #   }
    # end
  end

  def show
    @instrument = Instrument.find(params[:id])
    @user = User.find(@instrument.user_id)
    # the `geocoded` scope filters only users with coordinates (latitude & longitude)
    @markers = @user.geocoded
      {
        lat: @user.latitude,
        lng: @user.longitude
      }
  end

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.new(instrument_params)
    @instrument.user = User.first
    if @instrument.save!
      redirect_to instrument_path(@instrument)
    else
      render :new
    end
  end

  def update
    @instrument = Instrument.find(params[:id])
    @instrument.update(instrument_params)
    redirect_to instruments_path
  end

  def destroy
    @instrument = Instrument.find(params[:id])
    @instrument.destroy
    redirect_to instruments_path
  end

  private

  def instrument_params
    params.require(:instrument).permit(:make, :instrument_type, :delivery_option, :daily_rate, :instrument_name, :image, :photo)
  end

end
