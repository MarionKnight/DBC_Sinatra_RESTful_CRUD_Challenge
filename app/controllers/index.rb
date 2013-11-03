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

end

post '/notes/new' do
  p params
end

get '/notes/:id' do
  @this_note = Note.find(params[:id])
  erb :show_note
end

get '/notes/:id/edit' do
  redirect '/notes/:id/update'
end

patch '/notes/:id/update' do
  redirect '/notes/:id'
end

delete '/notes/:id/delete' do
  @this_note = Note.find(params[:id])
  @this_note.destroy
  redirect '/notes'
end