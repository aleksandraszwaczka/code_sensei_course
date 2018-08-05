BEGIN TRANSACTION;
--bez tego updaty poprawne się wykonają, a z błędami nie
--żeby w razie błędu żaden update się  nie wykonał używamy transakcji czyli BEGIN TRANSACTION

UPDATE samochody SET pojemnosc_silnika = 3.0
WHERE model = 'E87';

UPDATE samochody SET pojemnosc_silnika = 2.5
WHERE marka = 'Opel';

COMMIT;
-- COMMIT jest zakończeniem transakcji
