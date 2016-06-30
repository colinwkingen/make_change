require('sinatra')
require('sinatra-reloader')
require('./lib/make_change')
also_reload('./lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @cents = params.fetch('cents')
  @pennies = params.fetch('pennies')
  @nickles = params.fetch('nickles')
  @dimes = params.fetch('dimes')
  @quarters = params.fetch('quarters')
  @final_result = @cents.make_change(@pennies,@nickles,@dimes,@quarters)
  erb(:result)
end
