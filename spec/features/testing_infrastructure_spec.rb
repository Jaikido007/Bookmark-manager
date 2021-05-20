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
