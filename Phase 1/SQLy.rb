CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(64) NOT NULL,
  email VARCHAR(64) NOT NULL
);


CREATE TABLE photos(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(64) NOT NULL,
  description VARCHAR(64) NOT NULL,
  user_id VARCHAR(64) NOT NULL,
  product_id VARCHAR(64) NOT NULL,
  FOREIGN KEY(user_id) REFERENCES users(id),
  FOREIGN KEY (product_id) REFERENCES products(id)
);

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(64) NOT NULL,
  description VARCHAR(64) NOT NULL,
  price VARCHAR(64) NOT NULL
);


INSERT INTO users 
  ('name', 'email')
VALUES
  ('Andrew', 'andrew.s.guard@gmail.com'),
  ('Jorge', 'alfredo@gmail.com')
;


INSERT INTO photos 
  ('name', 'description')
VALUES
  ('thing', 'a picture of a thing'),
  ('another thing', 'another picture of another thing')
;

INSERT INTO products 
  ('name', 'description', 'price')
VALUES
  ('a product', 'a description of a product', '78'),
  ('another product', 'another description of another product', '675')
;
