# frozen_string_literal: true

# As a user
# So that I can store extra bookmarks
# I would like to be able to add new bookmarks

feature 'Add new bookmark' do
  scenario 'adds a bookmark' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://testbookmark.com')
    fill_in('title', with: 'Test Bookmark')
    click_button('Submit')

    expect(page).to have_link('Test Bookmark', href: 'http://testbookmark.com')
  end

  scenario 'The bookmark must be a valid URL' do
    visit('/bookmarks/new')
    fill_in('title', with: 'not a real bookmark')
    fill_in('url', with: 'not a real bookmark')
    click_button('Submit')

    expect(page).not_to have_content "not a real bookmark"
    expect(page).to have_content "You must submit a valid URL."
  end


end
