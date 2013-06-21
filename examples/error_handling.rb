

def divide(x, y)
  begin
    return x / y
  rescue ZeroDivisionError
    puts "TI86 says: ERR, can't divide by zero. Try a new equation"
  ensure
    puts "This must be run, no matter what. "
  end
end

def process_spreadsheet(s)
  begin
    open_my_spreadsheet()
    load_all_cells()
    some_something_to_data()
  rescue
    puts "Spreadsheet error"
  ensure
    save_spreadsheet()
  end
end

# puts divide(10, 2)

d = gets.to_i
if d == 0
  raise "BadDenominator"
end
puts divide(10, d)
