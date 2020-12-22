require "./models/bookmarks"
require 'pg'

describe Bookmarks do

  it 'returns a list of saved bookmarks' do
    conn = PG.connect(dbname: 'bookmark_manager_test')

    conn.exec( "INSERT INTO bookmarks (url) VALUES ('www.newyorker.com'), ('www.twitter.com')" )

    expect(Bookmarks.all).to include("www.newyorker.com")
    expect(Bookmarks.all).to include("www.twitter.com")
  end

  it 'adds a new bookmark into the database' do

    Bookmarks.create("www.asda.com")
    expect(Bookmarks.all).to include("www.asda.com")
  end
end