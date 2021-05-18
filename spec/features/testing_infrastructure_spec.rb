feature 'testing infrastructure' do
  scenario 'can run app and test page content' do
    visit '/hello'
    expect(page).to have_content 'Hello, world!'
  end
end

# USER STORY 1
# As a user
# So that I can see my bookmarks
# I would like to be able to list my bookmarks.
feature 'bookmark page' do
  scenario 'visit the homepage' do
    visit '/'
    expect(page).to have_content 'Bookmark Manager'
  end

  scenario 'view list of bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.google.com'
  end
end
