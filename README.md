# OSRM for Docker
This is a Docker image for running Open Source Routing Machine (OSRM) effortlessly.

```
docker build  --tag osrm:local -f ./Dockerfile --build-arg OSRM_PBF_URL=http://download.geofabrik.de/north-america/us/south-dakota-latest.osm.pbf .
```

The image exposes the OSRM server on the port 5000 by default.