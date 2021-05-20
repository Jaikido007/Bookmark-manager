require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmarks'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions, :method_override

  get '/hello' do
    'Hello, world!'
  end

  get '/' do
    # @bookmarks = Bookmark.all
    # erb :index
    redirect '/bookmarks'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :index
  end

  get '/bookmarks/new' do
    erb :new
  end

  post '/bookmarks' do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end

delete '/bookmarks/:id' do
  Bookmark.delete(id: params[:id])
  redirect '/bookmarks'
end

get '/bookmarks/:id/edit' do
  @bookmark_id = params[:id]
  erb :'edit'
end

patch '/bookmarks/:id' do
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec("UPDATE bookmarks SET url = '#{params[:url]}', title = '#{params[:title]}' WHERE id = '#{params[:id]}'")
  redirect('/bookmarks')
end

  run! if app_file == $0
end
