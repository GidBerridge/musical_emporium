class InstrumentsController < ApplicationController

  def index
    @instruments = Instrument.all
    # @instrument = Instrument.find(params[:instrument_type])

    # if params[:query].present?
    #   @instruments = Instrument.where(instrument_type: params[:query])
    # else
    #   @instruments = Instrument.all
    # end
  end

  def show
    @instrument = Instrument.find(params[:id])
  end

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.new(instrument_params)
    if @instrument.save
      redirect_to instrument_path(@list)
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

  # def search
  #   @search = Instrument.find(params[:instrument_type])
  # end

  private

  def instrument_params
    params.require(:instrument).permit(:instrument_type)
  end

end
