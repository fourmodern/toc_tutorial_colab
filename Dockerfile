FROM python:3.10-slim

LABEL description="TeachOpenCADD Tutorial Environment (t000-t010)"

ENV DEBIAN_FRONTEND=noninteractive

# System dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    wget curl git build-essential \
    swig \
    libxml2-dev libxslt1-dev \
    && rm -rf /var/lib/apt/lists/*

# ---- Tier 1: Core cheminformatics (t000-t010) ----
RUN pip install --no-cache-dir \
    rdkit-pypi \
    chembl_webresource_client \
    scikit-learn scipy \
    pandas numpy matplotlib seaborn \
    tqdm \
    beautifulsoup4 \
    requests requests-cache \
    openbabel-wheel

# ---- Tier 2: Structural biology (t008-t010) ----
RUN pip install --no-cache-dir \
    biotite \
    MDAnalysis \
    pypdb \
    biopython==1.77 \
    biopandas \
    redo \
    nglview==3.0.6 \
    ipywidgets \
    py3Dmol \
    plip \
    prolif \
    pdbfixer openmm \
    spyrmsd==0.5.2

# ---- opencadd (from GitHub) ----
RUN pip install --no-cache-dir \
    https://github.com/volkamerlab/opencadd/archive/master.tar.gz

# ---- Jupyter ----
RUN pip install --no-cache-dir \
    jupyter notebook nbconvert nbformat \
    && jupyter nbextension enable --py widgetsnbextension 2>/dev/null || true

# Working directory
WORKDIR /workspace
COPY *.ipynb /workspace/
COPY teachopencadd/ /workspace/teachopencadd/

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=toc"]
