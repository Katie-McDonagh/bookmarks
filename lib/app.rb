require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Hello World'
  end

  get '/bookmarks' do
    bookmark = Bookmarks.new
    @list = bookmark.list
    erb :bookmarks
  end

  run! if app_file == $0
end