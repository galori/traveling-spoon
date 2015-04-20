require 'rails_helper'

describe 'Taking a new reservation request' do
  it 'should allow the user to fill in all the fields and submit the request' do
    visit '/'
    select 'Argentina', :from => 'Which country are you visiting?'
    fill_in 'Which city are you visiting?', :with => 'Buenos Aires'
    fill_in 'Date', :with => 'Thu, 26 August 2015'
    fill_in 'Additional Dates', :with => 'The next two evenings'
    select '4', :from => 'Number of Guests'
    choose('Cooking Class')
    choose('Dinner')
    choose('reservation_has_dietary_restrictions_yes')
    fill_in 'Dietary restrictions', :with => 'No shellfish'
    select 'Not Spicy', :from => 'Spice preference'
    choose('reservation_wants_alcohol_yes')
    select '2', :from => 'How many are drinking?'

    click_button 'Submit'

    expect(page).to have_content 'Thank you for reservation. Here are the details'
    expect(page).to have_content 'Argentina'
    expect(page).to have_content 'Buenos Aires'
    expect(page).to have_content 'August 26, 2015'
    expect(page).to have_content 'The next two evenings'
    expect(page).to have_content 'Number of Guests: 4'
    expect(page).to have_content 'Cooking Class'
    expect(page).to have_content 'Dinner'
    expect(page).to have_content 'Allergy/Dietary Restrictions: Yes'
    expect(page).to have_content 'No shellfish'
    expect(page).to have_content 'Not Spicy'
    expect(page).to have_content 'Alcohol: Yes'
    expect(page).to have_content '2 Guests Drinking Alcohol'
  end
end