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
    connection = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

    visit('/bookmarks')

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end


# As a user
# So that I can store extra bookmarks
# I would like to be able to add new bookmarks

feature 'Add new bookmark' do
  scenario 'adds a bookmark' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://testbookmark.com')
    click_button('Submit')

    expect(page).to have_content 'http://testbookmark.com'
  end
end
