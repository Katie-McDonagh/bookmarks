require "./models/bookmarks"

describe Bookmarks do

  it 'returns a list of saved bookmarks' do 
    expect(Bookmarks.all).to include("www.newyorker.com")
    expect(Bookmarks.all).to include("www.twitter.com")
  end

end