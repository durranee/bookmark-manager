require 'sinatra/base'
require_relative 'link.rb'
require './database_connection_setup'



class Bookmarks < Sinatra::Base

  get '/' do
    @links = Link.all
    erb :index
  end

  post '/add' do
    Link.add(params[:url])
    redirect('/')

  end

  run! if app_file == $0
end
