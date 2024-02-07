# pip install python-dotenv

import os
from dotenv import load_dotenv

# Load variables from .env file
load_dotenv()

# Access variables using os.environ
db_host = os.environ.get("DB_HOST")
db_user = os.environ.get("DB_USER")
db_password = os.environ.get("DB_PASSWORD")

# Now you can use these variables in your code
print(f"DB Host: {db_host}")
print(f"DB User: {db_user}")
print(f"DB Password: {db_password}")
