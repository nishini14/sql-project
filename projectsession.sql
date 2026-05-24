use food_app_project;
-- create table customers where columns are customer_id,name,city,signup_date,gender
create table customers (
  customer_id int primary key,
  name varchar(225),
  city varchar(225),
  signup_date date not null,
  gender varchar(10)
);
CREATE TABLE restaurants (
  restaurant_id INT PRIMARY KEY,
  restaurant_name VARCHAR(255) NOT NULL,
  city VARCHAR(225),
  cuisine VARCHAR(100),
  rating DECIMAL(3, 2)
);
CREATE TABLE delivery_agents (
  agent_id INT PRIMARY KEY,
  agent_name VARCHAR(225) NOT NULL,
  city VARCHAR(225),
  joining_date DATE,
  rating DECIMAL(3, 2)
);
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT NOT NULL,
  restaurant_id INT NOT NULL,
  order_date DATE NOT NULL,
  order_amount DECIMAL(10, 2),
  discount DECIMAL(6, 2),
  payment_method VARCHAR(50),
  delivery_time INT,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
);
CREATE TABLE order_item (
  order_item_id INT PRIMARY KEY,
  order_id INT NOT NULL,
  item_name VARCHAR(255),
  quantity INT,
  price DECIMAL(10, 2),
  FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
