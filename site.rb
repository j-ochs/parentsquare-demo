require 'sinatra'


get "/" do
  @title = "Let Know"
  @header = "Don't Worry. Report Anonymously."
  @button_label = "Upload any photos or videos"
  @text_label = "Describe the incident"
  @text_placeholder = "Give as much detail as possible. Be specific."
  @detail_label = "or file a detailed report"

  @greeting = "noVal"
  @name = "noVal"
  erb :index
end


get '/detail' do
  erb :detailed_form
end

post '/detail' do
  greeting = params[:greeting] || "Hi There"
  name = params[:name] || "Nobody"

  erb :index, :locals => {'greeting' => greeting, 'name' => name}
end


get "/about" do
  erb :about
end