# NOTE: This code to generate data is written based on the CQL in the directory titled /database having been
# successfully executed. Coder: Adron Hall

from cassandra.cluster import Cluster
from cassandra.auth import PlainTextAuthProvider
from faker import Faker

cluster = Cluster(
    cloud={
        'secure_connect_bundle': '../infosec/secure-connect-better-botz.zip'
    },
    auth_provider=PlainTextAuthProvider('bb', 'betterbotz')
)
session = cluster.connect()

# This code will retrieve the version number of the Apollo Database.

row = session.execute("select release_version from system.local").one()
if row:
    print(row[0])
else:
    print("An error occurred.")

# Generate some data and put it into the database.
fake = Faker()

print(fake.name())

print(fake.address())

print(fake.text())

for _ in range(10):
  print(fake.name())

print()

# row = session.execute("INSERT INTO ")

