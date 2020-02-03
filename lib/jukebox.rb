# Add your code here
require "pry"
$songs = [
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
  songs.each_with_index do |value, index|
    puts "#{index + 1}. #{value}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp

    if user_input.to_i >= 1 && user_input.to_i <= 9
      puts "Playing #{songs[user_input.to_i - 1]}"
    elsif songs.include?(user_input)
      puts "Playing #{songs.detect { |i| i == user_input}}"
    else
      puts "Invalid input, please try again"
    end

end

def exit_jukebox
  puts "Goodbye"
end

def run(song)
  puts "Please enter a command:"
  user_input = gets.strip

  case user_input.downcase
  when "exit"
    exit_jukebox
  when "help"
    help
    run($songs)
  when "list"
    list($songs)
    run($songs)
  when "play"
    play($songs)
    run($songs)
  end

end
