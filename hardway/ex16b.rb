filename = 'text.txt'

target = File.open(filename, 'w')

print "Write something: "
text = STDIN.gets.chomp()

target.write("\n")
target.write(text)
target.write("\n")

puts "And finally, we close it,"
target.close()
