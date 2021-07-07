# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter your name:"

# users_name = gets.strip

# puts say_hello(users_name)
require 'pry'


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

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |song, index|
  puts "#{index + 1}. #{song}"
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
 # binding.pry
  if input.to_i.is_a?(Integer) && input.to_i < songs.length && input.to_i > 0
    puts "Playing #{songs[input.to_i - 1]}"
    elsif songs.include? (input)
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  juke_command = gets.strip
  while juke_command != "exit" do 
    if juke_command == "help"
      help
      elsif juke_command == "list"
      list(songs)
      elsif juke_command == "play"
      play(songs)
    end
    puts "Please enter a command:"
    juke_command = gets.strip
  end
  exit_jukebox
end






