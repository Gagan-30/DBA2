DROP TABLE IF EXISTS item;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS rating;

CREATE TABLE item (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    price NUMERIC(5,2) NOT NULL CHECK (price >= 0),
    seller TEXT NOT NULL
);

CREATE TABLE customer (
	id Integer PRIMARY KEY, 
	name TEXT NOT NULL,
	postcode TEXT NOT NULL
);

CREATE TABLE rating (
    id INTEGER PRIMARY KEY,
    item_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    date_time TIMESTAMP NOT NULL,
    stars INTEGER NOT NULL CHECK (stars >= 0 AND stars <= 5),
    CONSTRAINT fk_item FOREIGN KEY (item_id) REFERENCES item(id),
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customer(id)
);
