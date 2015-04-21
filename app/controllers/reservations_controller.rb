class ReservationsController < ApplicationController

  def new
  end

  def create
    reservation = Reservation.new(reservation_params)
    if reservation.save
      redirect_to thank_you_reservation_path(:id => reservation.id)
    else
      raise "unable to save. #{reservation.errors.full_messages}"
    end
  end

  def thank_you
    @reservation = Reservation.find(params[:id])
  end

  def index
    @reservations = Reservation.order('id')
  end

private

  def reservation_params
    params.require(:reservation).permit(
      :country,
      :city,
      :date,
      :additional_dates,
      :number_of_guests,
      :experience_type,
      :preferred_meal_time,
      :has_dietary_restrictions,
      :dietary_restrictions,
      :spice_preference,
      :wants_alcohol,
      :guests_drinking
    )
  end
end