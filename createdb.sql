CREATE TABLE item (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    price NUMERIC(5,2) NOT NULL CHECK (price >= 0),
    seller TEXT NOT NULL
);
