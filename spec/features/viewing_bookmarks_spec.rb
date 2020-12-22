require 'pg'


feature 'users can view a list of bookmarks' do
  scenario 'user visits /bookmarks page' do
    conn = PG.connect(dbname: 'bookmark_manager_test')

    conn.exec( "INSERT INTO bookmarks (url, title) VALUES ('www.newyorker.com', 'New Yorker'), ('www.twitter.com', 'Twitter')" )
    visit('/bookmarks')
    expect(page).to have_content 'New Yorker'
    expect(page).to have_content 'Twitter'
  end
end