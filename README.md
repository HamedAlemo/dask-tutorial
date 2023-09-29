# Dask Tutorial
This repository contains an introduction to Dask and tutorials to use Dask arrays and stackstac to retrieve a large number of satellite scenes from a STAC API using Dask. 

## Instructions

Build the Docker image:
```
$ docker build -t dask-tutorial .
```

Run the container as following after switching to the repository's directory locally:
```
$ docker run -it -v $(pwd):/home/jupyteruser -p 8888:8888 -p 8787:8787 dask-tutorial
```

Port `8787` is used by Dask Dashboard.
