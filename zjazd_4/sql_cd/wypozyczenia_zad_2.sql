SELECT COUNT(*) FROM wypozyczalnia;

SELECT MIN(pojemnosc_silnika),MAX(pojemnosc_silnika),AVG(pojemnosc_silnika)
FROM samochody;

SELECT COUNT(*)
FROM samochody
JOIN wypozyczenia ON samochody.id = wypozyczenia.samochod_id
WHERE samochody.marka = 'Skoda';
