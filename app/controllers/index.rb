get '/' do
  erb :index
end

get '/create' do

	erb :create
end

get '/read' do
	@notes = Note.all

	erb :read
end

get '/update' do
	@notes = Note.all

	erb :update
end

get '/delete' do
	@notes = Note.all

	erb :delete
end

post '/updated' do
	@note = Note.find(params[:id])
	@note.update_attributes(title: params[:title], content: params[:content])
	erb :update_confirmation
end

post '/update' do
	@note = Note.where(title: params[:title]).first

	erb :update_note
end

post '/create' do
	@note = Note.create(title: params[:title], content: params[:content])

	redirect '/'
end

post '/delete' do
	@note = Note.where(title: params[:title]).first

	@note.destroy

	erb :delete_confirmation
end


