require "./models/bookmarks"

describe Bookmarks do

  bookmark = Bookmarks.new

  it 'returns a list of saved bookmarks' do 
    expect(bookmark.list).to eq (["www.newyorker.com", "www.horseandhound.com"])
  end

end