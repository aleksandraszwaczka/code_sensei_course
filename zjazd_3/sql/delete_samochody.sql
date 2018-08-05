ola=# DELETE FROM samochody
ola-# WHERE marka = 'Ford';
DELETE 4
ola=# Select * from samochody
ola-# ;
 id |   marka    |  model  | pojemnosc_silnika | rok_produkcji | jest_sprawne
----+------------+---------+-------------------+---------------+--------------
  1 | Skoda      | Fabia   |               1.4 |          2010 | t
  3 | Volkswagen | Polo    |               1.6 |          2007 | t
  4 | Skoda      | Octavia |               1.4 |          2008 | t
  8 | Volksawgen | Passat  |               1.6 |          2008 | t
  9 | BMW        | E87     |               1.6 |          2010 | t
 10 | Citroen    | Xsara   |               1.6 |          2008 | t
 11 | Renault    | Megane  |               1.4 |          2010 | t
 12 | Mazda      | MX-3    |               1.4 |          2010 | t
 13 | Volvo      | C30     |               1.4 |          2010 | f
 14 | Opel       | Tigra   |               1.6 |          2009 | t
 15 | Skoda      | Fabia   |               1.4 |          2009 | t
 16 | Opel       | Corsa   |               1.4 |          2004 | t
 17 | Volkswagen | Golf IV |               1.6 |          2010 | t
 18 | Kia        | Sephia  |               1.4 |          2010 | t
 19 | Opel       | Astra   |               1.8 |          2013 | t
 20 | Opel       | Vectra  |               1.8 |          2013 | t
 21 | Audi       | 800s    |               1.8 |          2009 | t
 22 | Renault    | Laguna  |               1.8 |          2010 | t
 23 | Seat       | Arosa   |               1.4 |          2012 | t
 24 | Mercedes   | Benz    |               1.4 |          2010 | t
 25 | Renault    | Clio    |               1.4 |          2007 | f
 26 | Seat       | Cordoba |               1.4 |          2010 | t
(22 rows)

ola=#
