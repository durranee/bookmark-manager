feature 'viewing links' do
  scenario 'page displays links' do
    visit '/'
    expect(page).to have_content('www.google.co.uk')
    expect(page).to have_content('www.bbc.com')
    expect(page).to have_content('www.cnn.com')
  end
end
