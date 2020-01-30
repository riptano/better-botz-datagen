CREATE TABLE IF NOT EXISTS betterbotz.products (
  id uuid,
  name text,
  description text,
  price decimal,
  created timestamp,
  PRIMARY KEY (id, name, price, created)
);

CREATE TABLE IF NOT EXISTS betterbotz.orders (
  id uuid,
  address text,
  prod_id uuid,
  prod_name text,
  description text,
  price decimal,
  sell_price decimal,
  customer_name text,
  PRIMARY KEY (id, prod_name, customer_name)
);
