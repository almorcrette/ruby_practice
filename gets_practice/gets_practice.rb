def load_text
  filename = ARGV.first # pick up the first argument given when executing the program via command line
  return if filename.nil? # end the process if there was no argument given
  if File.exists?(filename) # check whether there's a file in the directory with the name of the argument given
    para_n = 1 # start paragraph counter
    parsed_para = "" # initalise a holding variable for each paragraph to parse, to be used to break the while loop
    while parsed_para # while loop will break when the text parsing reaches end as gets returns nil at end, which is a falsey
      print "Paragraph #{para_n}: " # print paragrapy number
      ## Key note, every time gets is invoked, it then moves to the next part of the arg text, so must not invoke gets without printing
      parsed_para = gets(sep="\n\n") # get the paragraph from the file, using two line breaks as separateor
      print parsed_para # print the paragraph that's been gets'ed
      para_n += 1 # add to paragraph counter
    end
  else
    puts "Sorry, #{filename} doesn't exist." # message if filename given in argument doesn't exist in directory.
  end
end

load_text
