require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe("Vehicle user path", {:type => :feature}) do
  it('will take the user to enter in new vehicle information and see result') do
    visit('/')
    click_link('Add a New Dealership')
    fill_in('name', :with => "Bob's Cars")
    click_button('Add to list')
    click_link('Back')
    click_link('See Our Dealers')
    click_link("Bob's Cars")
    click_link('Add a new vehicle')
    fill_in('make', :with => "Ford")
    fill_in('model', :with => "Prius")
    fill_in('year', :with => 2014)
    click_button('Add Vehicle')
    expect(page).to have_content("Our list of available vehicles")
  end
end
