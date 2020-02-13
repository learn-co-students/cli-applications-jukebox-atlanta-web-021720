# Add your code here
def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

def list(songs)
  i = 0

  for i in 0...songs.length do
    puts "#{i+1}. #{songs[i]}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip

  if input.to_i >= 1 && input.to_i <= songs.length
    puts "Playing #{songs[input.to_i - 1]}"
  elsif songs.include?(input)
    puts "playing #{songs.find{|song| song == input}}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  puts "Please enter a command:"
  input = gets.chomp
  if input.downcase == "exit"
    exit_jukebox
  elsif input.downcase == "help"
    help
  elsif input.downcase == "list"
    list(songs)
  elsif input.downcase == "play"
    play(songs)
  else
    puts "Invalid entry"
  end

end
