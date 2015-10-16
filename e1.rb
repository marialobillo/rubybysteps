puts "Hello World"
puts Time.now
puts Array.new([1,2,3])
puts rand(128).class

class MyClass
  def to_s
    "I am a MyClass"
  end
end

puts MyClass.new

puts "Hello", "testing", "puts", 12345
