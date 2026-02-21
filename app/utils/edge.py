import os

import gel

dsn = os.getenv("GEL_DSN")

if dsn:
    gel_client = gel.create_async_client(dsn=dsn)
else:
    gel_client = gel.create_async_client()
