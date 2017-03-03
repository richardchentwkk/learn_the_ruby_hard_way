filename = ARGV.first
#Open files
txt = open(filename)

puts "Here's your file #{filename}:"
##Read files
print txt.read

print "Type the filename again: "
file_again = $stdin.gets.chomp
txt_again = open(file_again)

#Read files
print txt_again.read
