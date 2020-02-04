// This next set of INSERTS adds data to the Better Botz Tables.
INSERT INTO betterbotz.products (  id ,  name ,  description,  price,  created ) VALUES (31047029-2175-43ce-9fdd-b3d568b19bb0,'Heavy Lift Arms','Heavy lift arms capable of lifting 1,250 lbs of weight per arm. Sold as a set.',4199.99,'2019-01-10 09:48:31.020+0040') IF NOT EXISTS;
INSERT INTO betterbotz.products (  id ,  name ,  description,  price,  created ) VALUES (31047029-2175-43ce-9fdd-b3d568b19bb1,'Precision Action Arms','Arms for precision activities in manufacturing or repair. Sold as a set.',12199.99,'2019-01-10 09:28:31.020+0040') IF NOT EXISTS;
INSERT INTO betterbotz.products (  id ,  name ,  description,  price,  created ) VALUES (31047029-2175-43ce-9fdd-b3d568b19bb2,'Medium Lift Arms','Medium lift arms capable of lifting 850 lbs of weight per arm. Sold as a set.',3199.99,'2019-01-10 09:23:31.020+0040') IF NOT EXISTS;
INSERT INTO betterbotz.products (  id ,  name ,  description,  price,  created ) VALUES (31047029-2175-43ce-9fdd-b3d568b19bb3,'Drill Arms','Arms for drilling into surface material. Sold as a set. Does not include drill bits.',2199.99,'2019-01-10 09:12:31.020+0040') IF NOT EXISTS;
INSERT INTO betterbotz.products (  id ,  name ,  description,  price,  created ) VALUES (31047029-2175-43ce-9fdd-b3d568b19bb4,'High Process AI CPU','Head processor unit for robot with heavy AI job process capabilities.',2199.99,'2019-01-10 18:48:31.020+0040') IF NOT EXISTS;
INSERT INTO betterbotz.products (  id ,  name ,  description,  price,  created ) VALUES (31047029-2175-43ce-9fdd-b3d568b19bb5,'Basic Task CPU','Head processor unit for robot with basic process tasks.',899.99,'2019-01-10 18:48:31.020+0040') IF NOT EXISTS;
INSERT INTO betterbotz.products (  id ,  name ,  description,  price,  created ) VALUES (31047029-2175-43ce-9fdd-b3d568b19bb6,'High Strength Torso','Robot body with reinforced plate to handle heavy workload and weight during jobs.',2199.99,'2019-01-10 18:48:31.020+0040') IF NOT EXISTS;
INSERT INTO betterbotz.products (  id ,  name ,  description,  price,  created ) VALUES (31047029-2175-43ce-9fdd-b3d568b19bb7,'Medium Strength Torso','Robot body to handle general jobs.',1999.99,'2019-01-10 18:48:31.020+0040') IF NOT EXISTS;
INSERT INTO betterbotz.products (  id ,  name ,  description,  price,  created ) VALUES (31047029-2175-43ce-9fdd-b3d568b19bb8,'Precision Torso','Robot torso built to handle precision jobs with extra stability and accuracy reinforcement.',8199.99,'2019-01-10 18:48:31.020+0040') IF NOT EXISTS;

SELECT name, description, price FROM betterbotz.products ;

SELECT id, name, description, price FROM betterbotz.products ;

SELECT id, name, description, price, created FROM betterbotz.products WHERE id = 31047029-2175-43ce-9fdd-b3d568b19bb0 AND name = 'Heavy Lift Arms' AND price = 4199.99 ;

SELECT id, name, description, price, created FROM betterbotz.products WHERE id = 31047029-2175-43ce-9fdd-b3d568b19bb0 AND name = 'Heavy Lift Arms' AND price = 4199.99 AND created = '2019-01-10 09:48:31.020+0040';

SELECT id, name, description, price, created FROM betterbotz.products WHERE price > 0 ALLOW FILTERING;

SELECT * FROM betterbotz.orders;

SELECT * FROM betterbotz.addresses;

SELECT * FROM betterbotz.shipping;
