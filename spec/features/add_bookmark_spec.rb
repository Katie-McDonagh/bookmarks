feature 'users can add a bookmark' do
  scenario 'allows a user to visit the add page' do
    visit('/add')
    expect(page).to have_content 'save new bookmarks here'
  end
end