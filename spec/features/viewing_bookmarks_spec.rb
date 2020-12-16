feature 'users can view a list of bookmarks' do
  scenario 'user visits /bookmarks page' do
    visit('/bookmarks')
    expect(page).to have_content 'www.newyorker.com'
  end
end