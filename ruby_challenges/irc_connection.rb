require 'socket'

server  = 'irc.freenode.net'
port    = 6667
socket  = TCPSocket.open(server, port)

nickname = 'SkillcrushBotOMG'
channel  = '#ChatBotBlahBlah'

socket.puts "NICK #{nickname}"
socket.puts "USER #{nickname} 0 * #{nickname}"
socket.puts "JOIN #{channel}"
socket.puts "PRIVMSG #{channel} :I am so happy to be here!"

while message = socket.gets do  # Read lines from socket
  puts message                  # and print them

  if message.match('^PING :')   # If the message has PING at the beginning
    server = message.split(':').last # The server is equal to whatever is after the colon
    puts "PONG #{server}"       
    socket.puts "PONG #{server}" # Return the ball!
  elsif message.match("How are you?")
    puts "PRIVMSG #{channel} :Good, thanks! How about you?"
    socket.puts "PRIVMSG #{channel} :Good, thanks! How about you?"
  end

end
