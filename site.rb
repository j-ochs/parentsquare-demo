require 'sinatra'

get "/" do
  @title = "Let Know"
  @header = "Don't Worry. Report Anonymously."
  @button_label = "Upload any photos or videos"
  @text_label = "Describe the incident"
  @text_placeholder = "Give as much detail as possible. Be specific."
  @detail_label = "or file a detailed report"
  @incident_types = ["Alcohol", "Assault", "Bullying", "Hazing", "Drugs", "Graffiti", "Injury", "Suspicious activity",
              "Trespassing", "Vandalism", "Weapons violation", "Technology misuse", "Other"]
  @locations = ["On school campus or grounds", "During transportation to/from school", "At school-sponsored events", "Other"]

  erb :index
end


post '/results' do
  @title = "Let Know"
  @header = "Don't Worry. Report Anonymously."
  description = params[:description] || "ERROR"
  file = params[:file] || "ERROR"

  erb :results, :locals => {'description' => description, 'file' => file}
end
