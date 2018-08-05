SELECT rok_produkcji, COUNT(model) AS liczba_samochodow
FROM samochody
GROUP BY rok_produkcji
HAVING COUNT(model) > 3
--ogranicza każðą grupę, jeśli nie spełniony jest dla danej grupy ten warunek to nie wyświetla tej grupy
ORDER BY rok_produkcji;
--sortowanie po roku produkcji


--Po kolei idzie tak:
-- SELECT wyświetlany na końcu
-- FROM samochody, bierze i przełazi przez tą tabele
-- GROUP BY grupuje te samochody po roku produkcji
--
