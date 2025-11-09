TRUNCATE TABLE rating, invoice, customer, item RESTART IDENTITY CASCADE;

INSERT INTO item (id, name, price, seller) VALUES
(1, 'Pillow', 45.68, 'jemma123'),
(2, 'Cutting Board', 24.63, 'modestMouse'),
(3, 'Router', 59.99, 'teaTimeTilly'),
(4, 'BookShelf', 60.69, 'happyFeet'),
(5, 'Folder', 5.99, 'goGetter');

INSERT INTO customer (id, name, postcode) VALUES
(1, 'Alice Green', 'SW1A 1AA'),
(2, 'Bob Carter', 'E1 6AN'),
(3, 'Charlie Wood', 'M1 1AE'),
(4, 'Diana Hill', 'L1 8JQ'),
(5, 'Ethan Wells', 'B2 4QA');

INSERT INTO invoice (id, item_id, customer_id, quantity, cost) VALUES
(1, 1, 1, 2, 25.00),
(2, 3, 2, 1, 35.75),
(3, 2, 3, 1, 25.00),
(4, 4, 4, 3, 56.97),
(5, 5, 5, 1, 45.00);

INSERT INTO rating (id, item_id, customer_id, date_time, stars) VALUES
(1, 1, 1, '2025-11-01 10:39:50', 5),
(2, 2, 3, '2025-11-02 12:01:59', 2),
(3, 3, 2, '2025-11-03 17:17:17', 4),
(4, 4, 4, '2025-11-04 09:49:28', 3),
(5, 5, 5, '2025-11-05 18:20:49', 5);
