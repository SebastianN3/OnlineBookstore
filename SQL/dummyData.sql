-- Dummy data for bookstore_user relation
INSERT INTO bookstore_user (username, passwd, first_name, middle_name, last_name, email, phone_number, billing_street_number, billing_street_name, billing_apt_number, billing_city, billing_province, billing_postal_code, shipping_street_number, shipping_street_name, shipping_apt_number, shipping_city, shipping_province, shipping_postal_code, bank_account_number, is_owner)
VALUES ('anchoviesdisplay', 'TV6$@dsXn2:g:^M', 'Marharyta', NULL, 'Igor', 'anchovies@gmail.com', '123-456-6789', 3293, 'Carling Avenue', NULL, 'Ottawa', 'Ontario', 'K1Z 7B5', 1169, 'Port Washington Road', NULL, 'Granum', 'Alberta', 'T0L 1A0', '5704787329', TRUE);

INSERT INTO bookstore_user (username, passwd, first_name, middle_name, last_name, email, phone_number, billing_street_number, billing_street_name, billing_apt_number, billing_city, billing_province, billing_postal_code, shipping_street_number, shipping_street_name, shipping_apt_number, shipping_city, shipping_province, shipping_postal_code, bank_account_number, is_owner)
VALUES ('possiblyathletic', '@^Dwv-fPdX]kB8u6', 'Vincentas', NULL, 'Haroon', 'haroon@gmail.com', '987-654-4321', 3533, 'Orenda Rd', NULL, 'Brampton', 'Ontario', 'L6W 1Z2', 1894, 'Old Spallumcheen Rd', NULL, 'Princeton', 'British Columbia', 'V0X 1W0', '5391265469', FALSE);


-- Dummy data for book and publisher relations
INSERT INTO book (ISBN, book_name, author_name, genre, book_language, book_edition, book_format, book_year)
VALUES ('978-1541758001', 'Surveillance Capitalism', 'Shoshana Zuboff', 'Information Theory', 'English', 1, 'Paperback', '2020');

INSERT INTO book (ISBN, book_name, author_name, genre, book_language, book_edition, book_format, book_year)
VALUES ('978-1999683382', 'The Twittering Machine', 'Richard Seymour', 'Informative', 'English', 1, 'Paperback', 2019);

INSERT INTO publisher (publisher_name, street_number, street_name, apt_number, city, province, postal_code, email, bank_account_number)
VALUES ('The Indigo Press', 50, 'Albemarle St', NULL, 'London', NULL, 'W1S 4BD', 'indigo@press.com', '8176967849');

INSERT INTO publisher (publisher_name, street_number, street_name, apt_number, city, province, postal_code, email, bank_account_number)
VALUES ('PublicAffairs', 1290, 'Avenue of the Americas', NULL, 'New York', NULL, 'NY 10104', 'public@affairs.com', '9873573888');


-- Dummy data into publisher's phone numbers
INSERT INTO publisher_phone (publisher_name, phone_number)
VALUES ('The Indigo Press', '+44 20 7493 4361');

INSERT INTO publisher_phone (publisher_name, phone_number)
VALUES ('PublicAffairs', '212-364-1100');


-- Dummy data for supplies relation
INSERT INTO supplies (publisher_name, ISBN, number_in_stock, price, publisher_percentage, number_sold, total_number_purchased)
VALUES ('The Indigo Press', '978-1999683382', 50, 10.61, 50, 20, 100);

INSERT INTO supplies (publisher_name, ISBN, number_in_stock, price, publisher_percentage, number_sold, total_number_purchased)
VALUES ('PublicAffairs', '978-1541758001', 100, 28.70, 55, 40, 150);