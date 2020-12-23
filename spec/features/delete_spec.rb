feature 'a user can delete a bookmark' do
  scenario 'a user deletes a bookmark' do
    visit('/add')
    fill_in('url', :with => 'www.asda.com')
    fill_in('title', :with => 'Asda')
    click_on('add bookmark')
    click_on('delete')
    visit('/bookmarks')
    expect(page).not_to have_content("Asda")
  end
end