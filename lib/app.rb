require 'sinatra/base'
require_relative 'link.rb'
require './database_connection_setup'
require 'sinatra/flash'

class Bookmarks < Sinatra::Base
  enable :sessions
  register Sinatra::Flash

  get '/' do
    @links = Link.all
    erb :index
  end

  post '/add' do

    Link.good_link?(params[:url]) ? Link.add(params[:url]) :
    flash[:error] = 'Sorry, the link you have added is not valid'
    redirect('/')

  end

  run! if app_file == $0
end
