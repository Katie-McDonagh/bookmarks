require 'pg'


feature 'users can view a list of bookmarks' do
  scenario 'user visits /bookmarks page' do
    conn = PG.connect(dbname: 'bookmark_manager_test')

    conn.exec( "INSERT INTO bookmarks VALUES (1, 'www.newyorker.com'), (2, 'www.twitter.com')" )
    visit('/bookmarks')
    expect(page).to have_content 'www.newyorker.com'
    expect(page).to have_content 'www.twitter.com'
  end
end