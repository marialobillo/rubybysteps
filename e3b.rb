require 'io/console'

puts "Write down whatever you like, your secrets safe with me"

entry = $stdin.noecho(&:gets)

$stdout.reopen 'secretdiary'

puts entry

$stdout.reopen '/dev/tty'

puts "Ive recorded the entry, safe and sound"
