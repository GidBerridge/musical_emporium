class InstrumentsController < ApplicationController

  def index
    # @instrument = Instrument.find(params[:instrument_type])
    @instrument = Instrument.all
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

  private

  def list_params
    params.require(:instrument).permit(:instrument_type)
  end

end
