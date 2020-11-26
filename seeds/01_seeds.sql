INSERT INTO users (name, email, password)
VALUES ('John Smith', 'john@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Jon Smithe', 'jon@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Mark Mitt', 'mitt_01@yahoo.ca', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES (1, 'title-1', 'description', 'thumbnail_photo_url', 'cover_photo_url', 100, 1, 1, 2, 'country', 'street', 'city', 'province', 'postal_code', true),
(2, 'title-2', 'description', 'thumbnail_photo_url', 'cover_photo_url', 100, 1, 1, 2, 'country', 'street', 'city', 'province', 'postal_code', true),
(3, 'title-3', 'description', 'thumbnail_photo_url', 'cover_photo_url', 100, 1, 1, 2, 'country', 'street', 'city', 'province', 'postal_code', true);

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2020-10-25', '2020-10-30', 1, 1),
('2020-10-30', '2020-11-4', 2, 2),
('2020-7-30', '2020-8-4', 3, 2),
('2020-11-27', '2020-12-10', 3, 3);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (1, 1, 1, 9, 'message-1'),
(2, 2, 2, 10, 'message-2'),
(2, 3, 3, 7, 'message-3');
