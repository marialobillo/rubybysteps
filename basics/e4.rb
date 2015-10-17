require 'io/console'

filename = ARGV[0]
$stdin.reopen filename
secrets = gets
puts "Yours secret diary:"
puts secrets
