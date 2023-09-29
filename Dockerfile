FROM continuumio/miniconda3:22.11.1

RUN apt-get update && apt-get install -y graphviz git

COPY environment.yml .
RUN conda env update -n base -f environment.yml --prune

# Create a non-root user and switch to that user
RUN useradd -m jupyteruser
USER jupyteruser

WORKDIR /home/jupyteruser

# Expose the JupyterLab port
EXPOSE 8888
# Expose the Dask Dashboard port
EXPOSE 8787

# Start JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0"]

