require 'bookmarks'

describe Bookmarks do

  describe '#all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmarks.all

      expect(bookmarks).to include('www.imdb.com', 'www.youtube.com', 'www.twitter.com')
    end
  end

end
