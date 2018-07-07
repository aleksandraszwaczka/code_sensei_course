def silnia(n)
  result = 1
  n.times { |i| return *= i + 1 }

  result
end

def silnia2(n)
  if n == 0
    return 1
  else
    return n * silnia2(n -1)
  end

end

puts silnia(4)
puts silnia2(5)


def silnia3(n)
  n == 0 ? 1 :n * silnia3(n - 1)
  # jeżeli n = 0  to zwróć to co po pytajniku, a w innym przypadku to co jest dalej
  
end
