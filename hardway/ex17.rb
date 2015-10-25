
from_file, to_file = 'test.txt', 'text.txt'
script = $0

puts "Copying from #{from_file} to #{to_file}"

input = File.open(from_file)
indata = input.read()

puts "The input file is #{indata.length} bytes long"

puts "Dows the output file exist? #{File.exists? to_file}"
puts "Ready, his RETURN to continue, CTRL-C to abort."
STDIN.gets

output = File.open(to_file, 'w')
output.write(indata)

puts "Alright, all done."

output.close()
input.close()
