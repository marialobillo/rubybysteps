def print_a_line(printer, string)
  printer.print_line string
end

class PrintPrinter
  def print_line(string)
    print(string + "\n")
  end
end

class PutsPrinter
  def print_line(string)
    puts string
  end
end

print_a_line PrintPrinter.new, "sweet text"
print_a_line PutsPrinter.new, "sweet text"
