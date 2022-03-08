# Instructions: 
# Group the array of hashes below into a hash, where each key of the hash is a sport,
# and each value of the hash is a list of names of people who play that sport.

players = [
  { :name => "Sam", :sport => "tennis" },
  { :name => "Mary", :sport => "squash" },
  { :name => "Ed", :sport => "tennis" },
  { :name => "Mark", :sport => "football" }
  ]
  
output = players.group_by { |hash| hash[:sport] }.transform_values { |values| values.map { |hash| hash[:name] } }

p output

# How I did it:
# values currently are an array, within which are hashes, which have two keys, :name and :sport
# I the values to by an array, with just the values of the :name key
# Can therefore map array, such that each element (a hash), returns the value of that hash under the :name key
# array.map { |hash| hash[:name] }
# I need to apply this to the values of the parent hash.Can use transform_values

# Slower, more manual way of doing it, may first solution

=begin

new_hash = {}

players.each do |element|
  new_hash[element[:sport]] = []
end

players.each do |element|
  new_hash[element[:sport]].push(element[:name])
end

new_hash

=end