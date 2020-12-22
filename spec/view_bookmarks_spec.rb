require "./models/bookmarks"
require 'pg'

describe Bookmarks do

  it 'returns a list of saved bookmarks' do

    Bookmarks.create("www.newyorker.com")
    Bookmarks.create("www.twitter.com")
    expect(Bookmarks.all).to include("www.newyorker.com")
    expect(Bookmarks.all).to include("www.twitter.com")
  end

  it 'adds a new bookmark into the database' do

    Bookmarks.create("Asda", "www.asda.com")
    expect(Bookmarks.all).to include("Asda")
  end
end