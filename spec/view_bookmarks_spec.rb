require "./models/bookmarks"
require 'pg'

describe Bookmarks do

  it 'returns a list of saved bookmarks' do

    Bookmarks.create("New Yorker", "www.newyorker.com")
    Bookmarks.create("Twitter", "www.twitter.com")
    expect(Bookmarks.all).to include("New Yorker")
    expect(Bookmarks.all).to include("Twitter")
  end

  it 'adds a new bookmark into the database' do

    Bookmarks.create("Asda", "www.asda.com")
    expect(Bookmarks.all).to include("Asda")
  end
end