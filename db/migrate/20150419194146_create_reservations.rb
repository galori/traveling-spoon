class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :country
      t.string :city
      t.datetime :date
      t.string :additional_dates
      t.integer :number_of_guests
      t.string :experience_type
      t.string :preferred_meal_time
      t.string :has_dietary_restrictions
      t.string :dietary_restrictions
      t.string :spice_preference
      t.string :wants_alcohol
      t.integer :guests_drinking
    end
  end
end
