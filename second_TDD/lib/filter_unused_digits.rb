def unused_digits(*args)
  digits = "0123456789"
  #delete the digit if it is contained in the arguments
  args.each do |arg|
    digits.delete! arg.to_s
  end
  digits
end
