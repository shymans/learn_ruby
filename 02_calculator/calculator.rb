def add(a,b)
  return a + b
end

def subtract(a,b)
  return a - b
end

def sum(test)
  return test.inject(0) { |a, b| a + b}
end

def multiply(arr_multi)
  return arr_multi.inject(0) { |a, b| a * b}
end

def factorial(test)
  return (1..test).reduce(:*)
end

