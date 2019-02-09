require 'sinatra'
require 'erb'

get '/' do
  a = ERB.new File.read("./mainpage.html.erb")
  print a.result
  @waddup = "Hello 2"
  a.result(binding)
end

