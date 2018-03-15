feature 'viewing links' do
  scenario 'page displays links' do
    visit('/')
    expect(page).to have_content('http://www.makersacademy.com')
    expect(page).to have_content('http://www.google.com')
    expect(page).to have_content('http://www.facebook.com')
  end
end

feature 'Adding a new link' do
  scenario 'A user can add a link to Bookmark Manager' do
    visit('/')
    fill_in('url', with: 'http://testlink.com')
    click_button('Add')
    expect(page).to have_content 'http://testlink.com'
  end
end

feature 'Check if link added is an actual link' do
  scenario 'user inputs a bad link and we throw error' do
    visit('/')
    fill_in('url', with: 'a very bad link')
    click_button('Add')
    expect(page).to have_content('Sorry, the link you have added is not valid')
  end
end
