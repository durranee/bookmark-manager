feature 'viewing links' do
  scenario 'page displays links' do
    visit('/')
    expect(page).to have_content('blahblahblah')
    expect(page).to have_content('www.bbc.com')
    expect(page).to have_content('www.cnn.com')
  end
end

feature 'Adding a new link' do
  scenario 'A user can add a link to Bookmark Manager' do
    visit('/add-a-new-link')
    fill_in('url', with: 'htp://testlink.com')
    click_button('Submit')

    expect(page).to have_content 'htp://testlink.com'
  end
end
