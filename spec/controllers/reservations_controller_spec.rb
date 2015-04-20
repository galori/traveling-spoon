require 'rails_helper'

describe ReservationsController do

  describe '#new' do
    it 'should be successful' do
      get :new
      expect(response).to be_successful
    end
  end

  describe '#create' do
    let(:valid_params) {{
      'country' => 'Indonesia',
      'city' => 'Jakarta',
      'date' => Time.zone.parse('2015-4-19'),
      'additional_dates' => '4/20/2015 and 4/21/2015',
      'number_of_guests' => 2,
      'experience_type' => 'Meal',
      'preferred_meal_time' => 'Lunch',
      'has_dietary_restrictions' => 'Yes',
      'dietary_restrictions' => 'No shellfish',
      'spice_preference' => 'Not spicy',
      'wants_alcohol' => 'Yes',
      'guests_drinking' => 2
    }}

    before do
      post :create, :reservation => valid_params
    end

    it 'should create a new reservation' do
      expect(Reservation.first.attributes).to include(valid_params)
    end

    it 'should redirect to the thank you page' do
      expect(response).to redirect_to thank_you_reservation_path(Reservation.first.id)
    end
  end

  describe '#thank_you' do

    let(:reservation) {create(:reservation)}

    it 'should assign @reservation' do
      get :thank_you, :id => reservation.id
      expect(assigns[:reservation]).to eq(reservation)
    end
  end
end
