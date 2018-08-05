DROP TABLE IF EXISTS klienci;

CREATE TABLE klienci (id SERIAL PRIMARY KEY, imie VARCHAR, nazwisko VARCHAR, telefon INTEGER);

DROP TABLE IF EXISTS wypozyczenia;

CREATE TABLE wypozyczenia (data_wypozyczenia TIMESTAMP,
    data_oddania TIMESTAMP,
    czy_oplacono BOOLEAN,
    samochody_id VARCHAR,
    klienci_id INTEGER,
    FOREIGN KEY (samochody_id) REFERENCES samochody(id),
    FOREIGN KEY (klienci_id) REFERENCES klienci(id),
    id SERIAL PRIMARY KEY
);

DROP TABLE IF EXISTS karty_klientow;

CREATE TABLE karty_klientow (id_karty SERIAL PRIMARY KEY,
    data_otrzymania TIMESTAMP,
    wysokosc_znizki INTEGER,
    klienci_id VARCHAR UNIQUE,
    FOREIGN KEY (klienci_id) REFERENCES klienci(id)
  );

DROP TABLE IF EXISTS naprawy;

CREATE TABLE naprawy (data_naprawy TIMESTAMP,
    rodzaj_usterki VARCHAR,
    cena_naprawy DECIMAL,
    samochody_id VARCHAR
    FOREIGN KEY (samochody_id) REFERENCES samochody(id)
  );
