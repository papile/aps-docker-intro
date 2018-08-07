require 'sinatra'

set :bind, '0.0.0.0'

get '/' do
  'Docker intro app'
end

get '/env' do
  ENV['FOO']
end

get '/bind-mount' do
  `ls /usr/src/app/tmp`
end
