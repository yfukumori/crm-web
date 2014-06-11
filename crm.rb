require 'sinatra'
require_relative 'contact'
require_relative 'rolodex'

@@rolodex = Rolodex.new

get '/' do
	@crm_app_name = "My CRM"
	erb :index	
end

# View all contacts
get '/contacts' do
  erb :contacts
end

post "/contacts" do
	contact = Contact.new(params[:first_name], params[:last_name], params[:email], params[:note])
	@@rolodex.add_contact(contact)
	redirect('/contacts')
end


# Add a new contact
get '/contacts/new' do
	erb :new_contact
end

#Edit a contact
get 'contacts/:id/edit' do
end


# View a contact
get '/contacts/:id' do
end


# View all contacts
get '/contacts' do
end
