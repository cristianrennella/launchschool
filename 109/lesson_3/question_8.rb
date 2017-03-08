flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

puts flintstones.inspect

flintstones_clone = []

flintstones.each do |n| 
  if n.kind_of?(Array)
    n.each { |n| flintstones_clone.push(n)}
  else
    flintstones_clone.push(n)
  end
end

puts flintstones_clone.inspect