# arm-minidlna

To start the container with default config :
```bash
docker run -d --net="host" minidlna
```

But you can also use your local datastore :
```bash
docker run -d --net="host" -v <your local datastore>:/data minidlna
```

Make sure you create in your local datastore, the 2 following folders : media/ & db/
