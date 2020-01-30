# NOTE: This code to generate data is written based on the CQL in the directory titled /database having been
# successfully executed. Coder: Adron Hall
import uuid

from cassandra import ConsistencyLevel
from cassandra.cluster import Cluster
from cassandra.auth import PlainTextAuthProvider
from faker import Faker
from cassandra.query import tuple_factory, BatchStatement
from random import randrange

cluster = Cluster(
    cloud={
        'secure_connect_bundle': '../infosec/secure-connect-better-botz.zip'
    },
    auth_provider=PlainTextAuthProvider('bb', 'betterbotz')
)
session = cluster.connect()
session.row_factory = tuple_factory

# This code will retrieve the version number of the Apollo Database.
products = session.execute("SELECT id, name, price, created, description FROM betterbotz.products")
fake = Faker()
totalRecordsCount=0

for product in products:
    insert_order = session.prepare(
        "INSERT INTO betterbotz.orders( id, address, prod_id, prod_name, description, price, sell_price, customer_name) VALUES( ?, ?, ?, ?, ?, ?, ?, ?);")
    batch = BatchStatement(consistency_level=ConsistencyLevel.QUORUM)

    randNumber = randrange(500)
    discount = randrange(50, 5000, 1)
    for x in range(0, randNumber):
        totalRecordsCount = totalRecordsCount + 1
        sellPrice = product[2]

        if discount < product[2]:
            sellPrice = product[2] - discount
        identifier=uuid.uuid4()
        customerName=fake.name()
        batch.add(insert_order, (
            identifier,
            fake.address(),
            product[0],
            product[1],
            fake.text(),
            product[2],
            sellPrice,
            customerName))
        print(f"Will attempt to batch insert this data {identifier} {product[0]} {product[1]} {product[2]} {customerName}.")

    session.execute(batch)
    print(f"Ran Batch Run {product[1]} with ID: {product[0]}.")

print(f"Theoretically, {totalRecordsCount} records are being written via batch!")