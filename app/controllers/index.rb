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

	erb :update
end

post '/create' do
	@note = Note.create(title: params[:title], content: params[:content])

	redirect '/'
end


