# require 'sinatra'
# # require 'sinatra/activerecord'
# require_relative '../models/user'
# require_relative '../models/note'

# begin
#   require 'dotenv'
#   Dotenv.load
#   rescue LoadError
# end

# set :database, ENV['DATABASE_URL']

# enable :sessions

get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/user' do
  @user = User.find_by_email params[:email]
  if @user == nil
    p "Email not in database"
    redirect '/signup'
  elsif @user.password_hash != params[:password_hash]
    p "Password mismatch"
    redirect '/'
  else
    redirect '/notes'
  end
end

get '/signup' do
  erb :signup
end

post '/signup' do
  erb :signup
end

get '/notes' do
  # todo: use sessions but for now user_id is 1
  @user_id = 1
  @notes = Note.where("user_id = ?", @user_id)
  erb :notes
end

get '/notes/new' do
  erb :note_create
  p params
end

post '/notes' do
  p params
  redirect '/notes'
end

get '/notes/:id' do
  @this_note = Note.find(params[:id])
  erb :note_detail
end

get '/notes/:id/edit' do
  erb :note_detail
end

patch '/notes/:id' do
  note = Note.find(params[:id])
  p note.methods
  note.update(content: params[:content])
  redirect "/notes/#{note.id}"
# Important!! You need double quotes to do string interpolation!!
end

delete '/notes/:id' do
  this_note = Note.find(params[:id])
  this_note.delete
  redirect '/notes'
end