filename = ARGV.first

puts "We are going to erase #{filename}"
puts "If you don't want that, hit ctrl-C(^C)."
puts "If you want that, hit return."

$stdin.gets

puts "Opening the file..."
target = open(filename,'w')

#Empty the file
target.truncate(0);
puts "Now I'm going to ask you for three lines."

print "line1: "
line1 = $stdin.gets.chomp
print "line2: "
line2 = $stdin.gets.chomp
print "line3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally, we close it."

target.close
