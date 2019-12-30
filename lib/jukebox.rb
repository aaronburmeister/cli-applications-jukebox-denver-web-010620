# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def say_hello(name)
  "Hi #{name}!"
end

puts "Enter your name:"
users_name = gets.strip

puts say_hello(users_name)

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
  if songs.include?(song)
    puts "Playing #{song}"
  elsif songs[song + 1]
    puts "Playing #{songs[song + 1]}"
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
      list
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
end

run(songs)