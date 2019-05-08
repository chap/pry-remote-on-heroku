require "sinatra"
require 'pry-remote'

get '/*' do
  puts params.to_s
  binding.remote_pry
  return params.to_s
end

post '/*' do
  puts params.to_s
  return params.to_s
end
