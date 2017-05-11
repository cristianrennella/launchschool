require "socket"

server = TCPServer.new("localhost", 3003)
loop do
  client = server.accept

  request_line = client.gets

  next if !request_line || request_line =~ /favicon/

  puts request_line
  method, paramstring = request_line.split('?')
  paramstring = paramstring.split(' ')[0] # chop off the HTTP version
  paramarray  = paramstring.split('&')    # only handles two parameters
  
  paramhash = paramarray.each_with_object({}) do |param, hash|
    key, value = param.split("=")
    hash[key] = value
  end

  puts paramhash

  client.puts "HTTP/1.1 200 OK"
  client.puts "Content-Type: text/plain\r\n\r\n"

  paramhash["rolls"].to_i.times do 
    client.puts rand(paramhash["sides"].to_i) + 1
  end

  client.close
end