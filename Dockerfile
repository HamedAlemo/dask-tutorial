FROM continuumio/miniconda3:24.7.1-0

COPY environment.yml .
RUN conda env create -f environment.yml

# Activate the Conda environment
RUN echo "conda activate dask_tutorial" >> ~/.bashrc
ENV PATH="$PATH:/opt/conda/envs/dask_tutorial/bin"

# Create a non-root user and switch to that user
RUN useradd -m daskuser
USER daskuser

WORKDIR /home/daskuser
COPY --chown=daskuser dask_intro.ipynb .
COPY --chown=daskuser stackstac.ipynb .
COPY --chown=daskuser dask_dataframe.ipynb .

# Expose the JupyterLab port
EXPOSE 8888
# Expose the Dask Dashboard port
EXPOSE 8787

# Start JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0"]

