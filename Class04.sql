1) SELECT f.title,f.special_features FROM film f WHERE rating='PG-13';

2) SELECT length AS DURATION FROM film;

3) SELECT title,rental_rate,replacement_cost FROM film WHERE replacement_cost BETWEEN 20 AND 24;

4) SELECT f.title,c.name,f.rating FROM film f,category c WHERE special_features LIKE'%Behind the Scenes%';

5) SELECT a.first_name,a.last_name FROM actor a,film f WHERE f.title='ZOOLANDER FICTION';

6) SELECT a.address,c.city,co.country FROM address a, city c, country co,store s WHERE s.address_id= a.address_id AND c.city_id = a.city_id AND co.country_id = c.country_id AND s.store_id=1;

7) SELECT f1.title AS film1, f1.rating AS rating1, f2.title AS film2, f2.rating AS rating2 FROM film f1, film f2 WHERE f1.film_id <> f2.film_id AND f1.rating = f2.rating; 

8) SELECT DISTINCT f.title,sr.store_id,sf.first_name,sf.last_name FROM film f,inventory i,store sr ,staff sf where i.film_id = f.film_id AND i.store_id = sr.store_id AND sr.manager_staff_id=sf.staff_id AND sr.store_id =2;
