players = [
  { :name => "Sam", :sport => "tennis" },
  { :name => "Mary", :sport => "squash" },
  { :name => "Ed", :sport => "tennis" },
  { :name => "Mark", :sport => "football" }
  ]
  
output = players.group_by { |hash| hash[:sport] }.transform_values { |values| values.map { |hash| hash[:name] } }

p output

# values currently are an array, within which are hashes, which have two keys, :name and :sport
# I the values to by an array, with just the values of the :name key
# Can therefore map array, such that each element (a hash), returns the value of that hash under the :name key
# array.map { |hash| hash[:name] }
# I need to apply this to the values of the parent hash.Can use transform_values

