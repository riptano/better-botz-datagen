-- noinspection SqlNoDataSourceInspectionForFile

CREATE TABLE IF NOT EXISTS betterbotz.customers (
  id uuid,
  username text,
  password text,
  email text,
  created timestamp,
  PRIMARY KEY (username, email)
);

CREATE TABLE IF NOT EXISTS betterbotz.products (
  id uuid,
  name text,
  description text,
  price decimal,
  created timestamp,
  PRIMARY KEY (id, name, price, created)
);

CREATE TABLE IF NOT EXISTS betterbotz.shipping (
  id uuid,
  prod_id uuid,
  cust_id uuid,
  address_id uuid,
  prod_name text,
  customer_name text,
  street text,
  city text,
  state text,
  country text,
  code text,
  PRIMARY KEY (prod_name, customer_name, city, (state, country, code))
);

CREATE TABLE IF NOT EXISTS betterbotz.orders (
  id uuid,
  prod_id uuid,
  cust_id uuid,
  address_id uuid,
  prod_name text,
  description text,
  price decimal,
  sell_price decimal,
  customer_name text,
  PRIMARY KEY (prod_name, customer_name)
);

CREATE TABLE IF NOT EXISTS betterbotz.addresses (
  id uuid,
  street text,
  city text,
  state text,
  country text,
  code text,
  user_id uuid,
  PRIMARY KEY (street, city, (state, country), code)
);
