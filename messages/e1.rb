class Foo
  def foo
    puts  "I am foo!"
  end

  def do_foo
    foo
    self.foo
    foo()
    self.foo()
    send(:foo)
  end

  def foo=(something)
    puts "Now I am #{something}!"
  end

  def do_foo_assign
    foo = "bar"
    self.foo = "bar"
  end

end

f = Foo.new
f.do_foo
f.do_foo_assign
