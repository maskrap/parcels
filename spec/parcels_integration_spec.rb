require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('parcels', {:type => :feature})  do
  it('processes the variables needed to calculate shipping cost') do
    visit('/')
    fill_in('distance', :with => 1)
    fill_in('weight', :with => 2)
    fill_in('height', :with => 2)
    fill_in('width', :with => 2)
    fill_in('length', :with => 2)
    select('Regular', :from => "speed")
    select('Wrap this ish', :from => "wrap")
    click_button('Send')
    expect(page).to have_content(8)
  end
end
