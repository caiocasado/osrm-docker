FROM osrm/osrm-backend:latest

ARG OSRM_PBF_URL="http://download.geofabrik.de/south-america/brazil-latest.osm.pbf"

RUN apt-get update \
  && apt-get -y install curl

RUN curl -L $OSRM_PBF_URL --create-dirs -o /data/data.osm.pbf \
  && osrm-extract /data/data.osm.pbf -p /opt/car.lua \
  && osrm-contract /data/data.osrm

EXPOSE 5000
