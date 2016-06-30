require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the make change path',  {:type => :feature}) do
  it('fills in the input fields and returns the minimum number of coins used and coins still available') do
    visit('/')
    fill_in('cents', :with => 1)
    fill_in('pennies', :with => 1)
    fill_in('nickles', :with => 1)
    fill_in('dimes', :with => 1)
    fill_in('quarters', :with => 1)
    click_button('Submit')
    expect(page).to have_content('You got 1 pennies back
    You got 0 nickles back
    You got 0 dimes back
    You got 0 quarters back
    There are still 0 pennies in the bank.
    There are still 1 nickles in the bank.
    There are still 1 dimes in the bank.
    There are still 1 quarters in the bank.
    ')
  end
end
