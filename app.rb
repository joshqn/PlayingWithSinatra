require 'sinatra'
require 'pry'
require 'sinatra/activerecord'

class User < ActiveRecord::Base
  validates_presence_of :name
end

class App <Sinatra::Base

  get '/' do
    @users = User.all
    slim :index
  end

  get '/contact' do
    slim :contact
  end

  get '/output' do
    slim :output
  end

end


