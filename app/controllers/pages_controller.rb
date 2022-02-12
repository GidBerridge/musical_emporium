class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def add
    @instrument = Instrument.new
  end

end
