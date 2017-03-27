require('sinatra')
  require('sinatra/reloader')
  require('./lib/triangle')
  also_reload('lib/**/*.rb')


  get('/') do
    erb(:index)
  end

  get('/triangle') do
    side1 = params.fetch('side1')
    side2 = params.fetch('side2')
    side3 = params.fetch('side3')
    @triangle = Triangle.new(side1, side2, side3)
    erb(:triangle)
  end
