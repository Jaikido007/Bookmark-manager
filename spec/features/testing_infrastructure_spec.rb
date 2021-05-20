feature 'testing infrastructure' do
  scenario 'can run app and test page content' do
    visit '/hello'
    expect(page).to have_content 'Hello, world!'
  end
end



feature 'bookmark page' do
  scenario 'visit the homepage' do
    visit '/'
    expect(page).to have_content 'Bookmark Manager'
  end
end

  # As a user
  # So that I can see my bookmarks
  # I would like to be able to list my bookmarks.

feature 'View bookmarks' do
  scenario 'view list of bookmarks' do

    # Add the test data
    
    Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy All Software')
    Bookmark.create(url: 'http://www.google.com', title: 'Google')

    visit('/bookmarks')

    expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')
    expect(page).to have_link('Destroy All Software', href: 'http://www.destroyallsoftware.com')
    expect(page).to have_link('Google', href: 'http://www.google.com')
  end
end


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
end
