-- Create the database
CREATE DATABASE onlinebookstore;


-- Create the user relation
CREATE TABLE bookstore_user (
    username varchar(30),
    passwd varchar(30) NOT NULL,
    first_name varchar(30),
    middle_name varchar(30),
    last_name varchar(30),
    email varchar(30),
    phone_number varchar(30),
    billing_street_number INTEGER,
    billing_street_name varchar(30),
    billing_apt_number INTEGER,
    billing_city varchar(30),
    billing_province varchar(30),
    billing_postal_code varchar(30),
    shipping_street_number INTEGER,
    shipping_street_name varchar(30),
    shipping_apt_number INTEGER,
    shipping_city varchar(30),
    shipping_province varchar(30),
    shipping_postal_code varchar(30),
    bank_account_number varchar(30),
    is_owner BOOLEAN,

    PRIMARY KEY (username)
);


-- Create the book relation
CREATE TABLE book (
    ISBN varchar(15),
    book_name varchar(40),
    author_name varchar(40),
    genre varchar(20),
    book_language varchar(20),
    book_edition INTEGER,
    book_format varchar(20),
    book_year INTEGER,

    PRIMARY KEY (ISBN)
);


-- Create the publisher relation
CREATE TABLE publisher (
    publisher_name varchar(40),
    street_number INTEGER,
    street_name varchar(30),
    apt_number INTEGER,
    city varchar(30),
    province varchar(30),
    postal_code varchar(30),
    email varchar(30),
    bank_account_number varchar(30),

    PRIMARY KEY (publisher_name)
);


-- Create phone relation
CREATE TABLE publisher_phone (
    publisher_name varchar(40),
    phone_number varchar(40),

    PRIMARY KEY (publisher_name, phone_number),
    CONSTRAINT fk_publisher_phone FOREIGN KEY (publisher_name) REFERENCES publisher
);



-- Create the review relation
CREATE TABLE review (
    ID SERIAL,
    number_of_stars INTEGER,
    text varchar(280),

    PRIMARY KEY (ID)
);


-- Create the orders relation
CREATE TABLE orders (
    username varchar(30),
    ISBN varchar(15),
    tracking_number SERIAL,
    order_location varchar(30),
    date_ordered date,
    billing_street_number INTEGER,
    billing_street_name varchar(30),
    billing_apt_number INTEGER,
    billing_city varchar(30),
    billing_province varchar(30),
    billing_postal_code varchar(30),
    shipping_street_number INTEGER,
    shipping_street_name varchar(30),
    shipping_apt_number INTEGER,
    shipping_city varchar(30),
    shipping_province varchar(30),
    shipping_postal_code varchar(30),
    bank_account_number varchar(30),

    PRIMARY KEY (tracking_number),
    CONSTRAINT fk_username FOREIGN KEY (username) REFERENCES bookstore_user,
    CONSTRAINT fk_ISBN FOREIGN KEY (ISBN) REFERENCES book
);


-- Create the selects relation
CREATE TABLE selects (
    username varchar(30),
    ISBN varchar(15),
    quantity INTEGER,

    PRIMARY KEY (username, ISBN),
    CONSTRAINT fk_username FOREIGN KEY (username) REFERENCES bookstore_user,
    CONSTRAINT fk_ISBN FOREIGN KEY (ISBN) REFERENCES book
);


-- Create the supplies relation
CREATE TABLE supplies (
    publisher_name varchar(40),
    ISBN varchar(15),
    number_in_stock INTEGER,            -- Number currently in stock
    price NUMERIC,
    publisher_percentage NUMERIC,
    number_sold INTEGER,                -- Number sold historically
    total_number_purchased INTEGER,     -- Number purchased historically

    PRIMARY KEY (publisher_name, ISBN),
    CONSTRAINT fk_publisher_name FOREIGN KEY (publisher_name) REFERENCES publisher,
    CONSTRAINT fk_ISBN FOREIGN KEY (ISBN) REFERENCES book
);


-- Create the rates relation
CREATE TABLE rates (
    ID INTEGER,
    username varchar(30),
    ISBN varchar(15),

    CONSTRAINT fk_id FOREIGN KEY (ID) REFERENCES review,
    CONSTRAINT fk_username FOREIGN KEY (username) REFERENCES bookstore_user,
    CONSTRAINT fk_ISBN FOREIGN KEY (ISBN) REFERENCES book
);