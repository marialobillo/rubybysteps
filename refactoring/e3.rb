require 'date'

stuff = File.file?('stuff.txt') ?
File.readlines('stuff.txt').map(&:chomp) : []

if ARGV[0] == 'a'
  new_stuff = ARGV[1..-1]
  new_stuff << Date.today
  stuff << new_stuff.join(':')
elsif ARGV[0] == 'r'
  split_stuff = stuff.map {|s| s.split(':') }
  grouped_stuff = split_stuff.group_by {|s| s.last}
  grouped_stuff.each {|k, v| grouped_stuff[k] = v.group_by {|s| s.first } }

  sorted_keys = group_stuff.sort
  sorted_keys.each do |key|
    parsed = Date.parse(ARGV.last) rescue nil
    next if parsed && parsed != Date.parse(key)

    puts key
    group = grouped_stuff[key]
    if (ARGV[1] != 'e') && (f = group['f'])
      f.sort_by {|i| %w(b l d).index(f[1])}.each do |i|
        puts i[2]
      end
    end

    if (ARGV[1] != 'f') && group['e']
      puts '----'
      group['e'].each {|e| puts e[1]}
    end

    puts "===="
  end
end

File.open('stuff.txt', 'w') do |file|
  stuff.each {|s| file << s << "\n" }
end
