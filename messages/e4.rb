def do_call(object)
  object.call
end

a_proc = lambda { puts "this is a proc" }
do_call a_proc

class MyClass
  def some_method
    puts "hello from MyClass#some_method"
  end
end

object = MyClass.new
a_method_reference = object.method(:some_method)
do_call a_method_reference

class AnotherClass
  def call
    puts "This is AnotherClass#call"
  end
end

do_call AnotherClass.new
