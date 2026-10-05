# Dask Tutorial
This repository contains an introduction to Dask and tutorials to use Dask arrays and `stackstac` to retrieve a large number of satellite scenes from a STAC API using Dask. This is part of the course on [Advanced Geospatial Analytics with Python](https://hamedalemo.github.io/advanced-geo-python/intro.html) taught since Fall 2023 at Clark University. 


## Requirements

You need to have [pixi](https://pixi.sh) installed on your machine. Follow the [installation instructions](https://pixi.sh/latest/installation/) for your operating system.


## Instructions

Clone this repository and switch to its directory:

```
git clone https://github.com/HamedAlemo/dask-tutorial.git
cd dask-tutorial
```

Start Jupyter Lab:

```
pixi run lab
```

- Jupyter Lab will open in your browser (or copy the url printed in the terminal and paste it in your browser). 
- Open `dask_intro.ipynb`, `stackstac.ipynb` or `dask_dataframe.ipynb` and follow the instructions. 
- The Dask Dashboard is available on port `8787` once you start a Dask cluster in a notebook.
