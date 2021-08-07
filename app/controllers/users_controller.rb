class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    # the `geocoded` scope filters only users with coordinates (latitude & longitude)
    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end
end
