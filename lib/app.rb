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
    if Link.good_link?(params[:url])
      Link.add(params[:url])
      redirect('/') # if flash and divert back then disable this
    else
      flash[:notice] = 'Bad url, please enter a valid URL.<br>
      Please wait to divert back to home'
      # sleep(3)
    end
    # redirect('/')
  end

  run! if app_file == $0
end
