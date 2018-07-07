begin
50/0
  rescue #wyłapuje błąd


    number = gets.to_i

    begin
      puts 10/number
    rescue
      puts "Nie dziel przez zero!" #wyskakuje co należy zrobić w momencie błędu (obsługuje każdy wyjątek np. nie wyłapało pliku)
    end







def divide(dividend, divisor)

(2 + 3)
    begin
        dividend / divisor
    rescue
      Float::INFINITY
    end
end

puts devide(3, "e")

#begin i end używamy kiedy chcemy wychwycić błąd tylko w tej sekcji





def divide(dividend, divisor)
  dividend / divisor
    rescue ZeroDivisionError
      Float::INFINITY #takie oznaczenie, równie dobrze można wpisać własny tekst tak jak poniżej
  rescue TypeError
    "Podałeś zły typ!"
end

puts divide(3, 0)
puts divide(3, {})
