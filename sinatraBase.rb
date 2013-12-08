require 'sinatra/base'

#Tilt.register :sassc, SassC

#helpers do
#  def sassc(*args) render(:sassc, *args) end
#end

class SinatraBase < Sinatra::Base
  set :sessions, true
  set :port, 80

  get '/' do
    erb :index
  end

  get '/normalize.css' do
    scss :'foundation/scss/normalize', :style => :expanded
  end
  get '/foundation.css' do
    scss :'foundation/scss/foundation', :style => :expanded
  end
end
