require 'sinatra/base'
require "sinatra/activerecord"
require 'rack-mini-profiler'

class NextElection < Sinatra::Base    
  
  use Rack::MiniProfiler
  
  #Set Folder Structure  
  set :public_folder, 'assets'
  set :views, 'views'
  set :database_file, "database.yml"
  
  register Sinatra::ActiveRecordExtension  
  
  #Routes
  
  get '/' do
    @jurisdictions = Jurisdiction.all
    erb :home
  end
  
  not_found do
    "ERB Not Found"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

#Models

class Jurisdiction < ActiveRecord::Base
  has_many :elections
end

class Election < ActiveRecord::Base
  belongs_to :jurisdiction
end

class TrueClass
  def yesno
    "Yes"
  end
end

class FalseClass
  def yesno
    "No"
  end
end