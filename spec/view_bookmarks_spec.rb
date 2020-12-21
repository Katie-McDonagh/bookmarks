require "./models/bookmarks"

describe Bookmarks do

  it 'returns a list of saved bookmarks' do 
    expect(Bookmarks.all).to eq (["www.newyorker.com", "www.horseandhound.com"])
  end

end