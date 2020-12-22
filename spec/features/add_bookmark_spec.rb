feature 'users can add a bookmark' do
  scenario 'allows a user to visit the add page' do
    visit('/add')
    expect(page).to have_content 'save new bookmarks here'
  end

  scenario 'allows a user to fill in a form to add a bookmark' do
    visit('/add')
    fill_in('url', :with => 'www.asda.com')
    click_on('add bookmark')
    visit('/bookmarks')
    expect(page).to have_content 'www.asda.com'
  end
end