feature 'users can access the landing index page' do
  scenario 'user visits the home page' do
    visit('/')
    expect(page).to have_content 'Hello World'
  end
end