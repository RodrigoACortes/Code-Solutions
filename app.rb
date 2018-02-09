require 'sinatra'
require 'sendgrid-ruby'
include SendGrid

get '/home' do
  erb :home
end

get '/news' do
  erb :news
end

get '/about' do
  erb :about
end

get '/shop' do
  erb :shop
end

get '/contact_us' do
	erb :contact_us
end

get '/email' do
	@email=params[:email]
	@subject=params[:subject]
	@content=params[:content]

	from = Email.new(email:@email)
	to = Email.new(email:'charlesvelazquez15@gmail.com')
	subject = @subject
	content = Content.new(type: 'text/plain', value: @content)
	mail = Mail.new(from, subject, to, content)

	sg = SendGrid::API.new(api_key: ENV["SENDGRID_API_KEY"])
	response = sg.client.mail._('send').post(request_body: mail.to_json)
	puts response.status_code
	puts response.body
	puts response.headers
	erb :thanks
end