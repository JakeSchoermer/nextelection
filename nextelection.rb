require 'sinatra/base'

class NextElection < Sinatra::Base
  
  #Set Folder Structure  
  set :public_folder, 'assets'
  set :views, 'views'
  
  #Routes
  
  get '/' do
    erb :home
  end
  
  not_found do
    "ERB Not Found"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end