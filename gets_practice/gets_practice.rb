def load_text
  filename = ARGV.first
  return if filename.nil?
  if File.exists?(filename)
    text = gets.chomp
    p text
  else
    puts "Sorry, #{filename} doesn't exist."
  end
end

load_text