require 'rails_helper'

describe 'GET /' do
  it 'should route to reservations#new' do
    expect(get(root_path)).to route_to('reservations#new')
  end
end

describe 'GET /reservation/thank_you' do
  it 'should route to reservation#thank_you' do
    expect(get(thank_you_reservation_path(2))).to route_to('reservations#thank_you', :id => '2')
  end
end