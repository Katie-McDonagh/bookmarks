require 'sinatra/base'
require './models/bookmarks'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Hello World'
  end

  get '/bookmarks' do
    @list = Bookmarks.all
    erb :bookmarks
  end

  run! if app_file == $0
end