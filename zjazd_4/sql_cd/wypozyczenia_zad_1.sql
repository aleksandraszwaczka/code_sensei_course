SELECT * FROM samochody
LEFT JOIN wypozyczenia ON samochody.id = wypozyczenia.samochod_id
WHERE wypozyczenia.data_wypozyczenia IS NULL;

SELECT klienci.* FROM klienci
INNER JOIN wypozyczenia ON klienci.id = wypozyczenia.klient_id
JOIN samochody ON samochody.id = wypozyczenia.samochod_id
WHERE samochody.marka = 'Ford';

SELECT klienci.* FROM klienci
INNER JOIN wypozyczenia ON klienci.id = wypozyczenia.klient_id
LEFT JOIN samochody ON samochody.id = wypozyczenia.samochod_id
WHERE samochody.marka != 'Skoda';
-- Tutaj używamy left join bo chcemy też uzyskać klientów, którzy w ogóle nic nie wypożyczyli
-- zamiast != można używać zapisu <> czyli, że jest różne

SELECT samochody.* FROM samochody
-- -- wyświetla koluny tylko z tabeli samochody (wszystkie kolumny)
-- INNER JOIN można zapisać jako samo JOIN

SELECT * FROM klienci
LEFT JOIN karty_klientow ON karty_klientow.klient_id = klienci.id
JOIN wypozyczenia ON wypozyczenia.klient_id = klienci.id
JOIN samochody ON wypozyczenia.samochod_id = samochody.id
WHERE karty_klientow.klient_id IS NULL
AND samochody.marka = 'Skoda';
