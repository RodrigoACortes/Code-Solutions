require 'sinatra'
# require 'sendgrid-ruby'
# include SendGrid

get '/' do
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
	erb :thanks
end
