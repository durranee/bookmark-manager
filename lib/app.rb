require 'sinatra/base'
require 'link.rb'



class Bookmarks < Sinatra::Base

  get '/' do
    link = Link.new
    @list = link.all
    erb :index
  end



  run! if app_file == $0
end
