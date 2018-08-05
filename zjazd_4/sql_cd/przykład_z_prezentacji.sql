studenci(miasto, kraj, rok)
(Rio de Janeiro, Brazylia, 1)
(Rio de Janeiro, Brazylia, 3)
(Rio de Janeiro, Brazylia, 2)
(Salvador, Brazylia, 3)
(Salvador, Brazylia, 3)
(Quito, Ekwador, 1)
(Paryż, Francja, 2)

SELECT miasto, COUNT(*) AS liczba_studentow
--SELECT omija i przechodzi dalej (jeśli nie ma join)
FROM studenci
-- z tabeli studenci wyciąga info (tu liczy liczba_studentow)
WHERE kraj = 'Brazylia'
-- odrzuca do wyświetlenia wszystkie kraje poza Brazylią
GROUP BY miastoHAVING COUNT(*) > 1;
-- Wyświetla miasta, których liczba studentów jest większa od 1
-- Na końcu wczytuje SELECT, czyli wyświetla miasta, które spełniły wszystkie te warunki
