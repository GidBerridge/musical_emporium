class InstrumentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_instrument, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @instruments = Instrument.where("instrument_type ILIKE ?", "%#{params[:query]}%")
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
    @markers = [{
        lat: @user.latitude,
        lng: @user.longitude
      }]
  end


  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.new(instrument_params)
    @instrument.user = current_user
    if @instrument.save
      @instrument.save!
      redirect_to instrument_path(@instrument)
    else
      render :new
    end
  end

  def edit; end

  def update
    @instrument.update(instrument_params)
    redirect_to instrument_path(@instrument)
  end

  def destroy
    @instrument.destroy
    redirect_to instruments_path
  end

  private

  def set_instrument
    @instrument = Instrument.find(params[:id])
  end

  def instrument_params
    params.require(:instrument).permit(:make, :instrument_type, :delivery_option, :daily_rate, :instrument_name, :image, :photo)
  end
end
