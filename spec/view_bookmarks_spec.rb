require "./models/bookmarks"
require 'pg'

describe Bookmarks do

  it 'returns a list of saved bookmarks' do

    Bookmarks.create("New Yorker", "www.newyorker.com")
    Bookmarks.create("Twitter", "www.twitter.com")
    expect(Bookmarks.all[0].title).to eq("New Yorker")
    expect(Bookmarks.all[1].url).to eq("www.twitter.com")
  end

  it 'deletes a bookmark' do

    Bookmarks.create("New Yorker", "www.newyorker.com")
    id = Bookmarks.all[0].id[0]
    Bookmarks.delete(id)
    expect(Bookmarks.all.length).to eq(0)
  end
end