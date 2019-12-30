# Add your code here
=begin
def say_hello(name)
  "Hi #{name}!"
end

puts "Enter your name:"
users_name = gets.strip

puts say_hello(users_name)
=end
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_index {|i| puts "#{i + 1}. #{songs[i]}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.strip
  # input song name?
  if songs.include?(song)
    puts "Playing #{song}"
  # input song number? restrictions to prevent array shenanigans
  elsif songs[song.to_i - 1] && song.to_i >= 1 && song.to_i <= songs.length
    puts "Playing #{songs[song.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(playlist)
  puts "Please enter a command:"
  command = gets.strip
  until command == "exit" do
    if command == "list"
      list(playlist)
      run(playlist)
    elsif command == "help"
      help
      run(playlist)
    elsif command == "play"
      play(playlist)
      run(playlist)
    end
  end
  exit_jukebox
  exit
end
