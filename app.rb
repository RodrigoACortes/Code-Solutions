require 'sinatra'

get '/' do
  erb :home
end

get '/about' do
  erb :about
end

get '/contact_us' do
  erb :contact_us
end

get '/news' do
  erb :news
end

get '/shop' do
  erb :shop
end
