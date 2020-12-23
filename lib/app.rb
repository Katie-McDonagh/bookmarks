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

  delete 'bookmarks/:id' do
    Bookmarks.delete(params[:id])
    redirect '/bookmarks'
  end

  get '/add' do
    erb :add_bookmarks
  end

  post '/add' do
    Bookmarks.create(params["title"], params["url"])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end