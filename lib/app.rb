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

  get '/add' do
    erb :add_bookmarks
  end

  post '/add' do
    Bookmarks.create(params["title"], params["url"])
  end

  run! if app_file == $0
end