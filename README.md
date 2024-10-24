# Dask Tutorial
This repository contains an introduction to Dask and tutorials to use Dask arrays and `stackstac` to retrieve a large number of satellite scenes from a STAC API using Dask. This is part of the course on [Advanced Geospatial Analytics with Python](https://hamedalemo.github.io/advanced-geo-python/intro.html) taught since Fall 2023 at Clark University. 


## Requirements

You need to have Docker installed on your machine. 


## Instructions

It's recommended to pull the Docker image from Dockerhub. Otherwise, if you prefer, you can build your own image using the instructions in the following section. 

```
docker pull hamedalemo/dask-tutorial:1.3
```

```
docker run -it -p 8888:8888 -p 8787:8787 hamedalemo/dask-tutorial:1.3
```

Port `8787` is used by Dask Dashboard.

- Copy the Jupyter Lab url and paste it in your browser. 
- Open `dask_intro.ipynb`, `stackstac.ipynb` or `dask_dataframe.ipynb` and follow the instructions. 


Build the Docker image:

**Windows users:** It is highly recommended that you pull the Docker image, there seems to be an issue with conda-forge on WSL. 

```
docker build -t dask-tutorial .
```

Run the container as following after switching to the repository's directory locally:
```
docker run -it -p 8888:8888 -p 8787:8787 dask-tutorial
```
- Copy the Jupyter Lab url and paste it in your browser. 
- Open `dask_intro.ipynb`, `stackstac.ipynb` or `dask_dataframe.ipynb` and follow the instructions. 
