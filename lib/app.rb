require 'sinatra/base'
require_relative 'link.rb'



class Bookmarks < Sinatra::Base

  get '/' do
    @links = Link.all
    erb :index
  end

  get '/add-a-new-link' do
    erb :add_a_new_link
  end

  run! if app_file == $0
end
