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
  PRIMARY KEY ((prod_name), customer_name)
);
