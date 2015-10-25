
# save the file name
filename = "ex15_sample.txt"

#print the prompt
prompt = "> "
# open the file
txt = File.open(filename)

# print the file name and read the file
puts "Here's your file: #{filename}"
puts txt.read()
txt.close()

# gets the filename again
puts "I'll also ask you to type it again:"
print prompt
file_again = STDIN.gets.chomp()

# open again the file and save in a variable
txt_again = File.open(file_again)

# print the file variable content
puts txt_again.read()
txt_again.close()
