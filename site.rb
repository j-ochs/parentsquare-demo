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

post '/results' do
  description = params[:description] || "ERROR"
  file = params[:file] || "ERROR"

  erb :results, :locals => {'description' => description, 'file' => file}
end



get "/about" do
  erb :about
end