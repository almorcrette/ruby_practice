def load_text
  filename = ARGV.first
  return if filename.nil?
  if File.exists?(filename)
    para_n = 1
    parsed_para = ""
    while parsed_para
      print "Paragraph #{para_n}: " 
      parsed_para = gets(sep="\n\n")
      print parsed_para
      para_n += 1
    end
  else
    puts "Sorry, #{filename} doesn't exist."
  end
end

load_text
