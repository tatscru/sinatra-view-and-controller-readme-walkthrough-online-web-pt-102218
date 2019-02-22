require_relative 'config/environment'
#Controller! 

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original_string = params["string"]  
    #this is how we manipulate the string 
    @reversed_string = original_string.reverse 
    #including an @ gives the contents access in erb
    erb :reversed
  end

  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    
    erb :friends
  end
end