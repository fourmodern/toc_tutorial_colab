#!/bin/bash
# ============================================================
# TeachOpenCADD Tutorial - WSL2 Setup Script
# Windows에서 WSL2 터미널을 열고 실행:
#   bash setup_wsl.sh
# ============================================================
set -e

echo "=========================================="
echo "  TeachOpenCADD Tutorial Setup (WSL2)"
echo "=========================================="

# --- 1. System packages ---
echo ""
echo "[1/4] System packages..."
sudo apt-get update -qq
sudo apt-get install -y -qq \
    python3 python3-pip python3-venv \
    wget curl git build-essential \
    swig \
    libopenbabel-dev openbabel \
    libxml2-dev libxslt1-dev

# --- 2. Python venv ---
echo ""
echo "[2/4] Python virtual environment..."
VENV_DIR="$HOME/toc_env"
python3 -m venv "$VENV_DIR"
source "$VENV_DIR/bin/activate"
pip install --upgrade pip -q

# Tier 1: Core (t000-t007)
echo "  Installing core packages (t000-t007)..."
pip install -q \
    rdkit-pypi \
    chembl_webresource_client \
    scikit-learn scipy \
    pandas numpy matplotlib seaborn \
    tqdm \
    beautifulsoup4 \
    requests requests-cache \
    openbabel-wheel

# Tier 2: Structural biology (t008-t010)
echo "  Installing structural biology packages (t008-t010)..."
pip install -q \
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

# opencadd
echo "  Installing opencadd..."
pip install -q \
    https://github.com/volkamerlab/opencadd/archive/master.tar.gz

# Jupyter
pip install -q jupyter notebook nbconvert nbformat
jupyter nbextension enable --py widgetsnbextension 2>/dev/null || true

echo "  Python packages installed."

# --- 3. Workspace ---
echo ""
echo "[3/4] Setting up workspace..."
WORK_DIR="$HOME/toc_workshop"
mkdir -p "$WORK_DIR"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
# Copy notebooks
for nb in "$SCRIPT_DIR"/*.ipynb; do
    [ -f "$nb" ] && cp "$nb" "$WORK_DIR/"
done
# Copy teachopencadd subfolder
if [ -d "$SCRIPT_DIR/teachopencadd" ]; then
    cp -r "$SCRIPT_DIR/teachopencadd" "$WORK_DIR/"
fi

# --- 4. Shell aliases ---
echo ""
echo "[4/4] Setting up aliases..."
if ! grep -q "toc_env" "$HOME/.bashrc" 2>/dev/null; then
    cat >> "$HOME/.bashrc" << 'BASHEOF'

# TeachOpenCADD Tutorial
alias toc='source $HOME/toc_env/bin/activate && cd $HOME/toc_workshop'
alias toc-notebook='source $HOME/toc_env/bin/activate && cd $HOME/toc_workshop && jupyter notebook --no-browser'
BASHEOF
fi

echo ""
echo "=========================================="
echo "  Setup complete!"
echo "=========================================="
echo ""
echo "  사용법:"
echo "    toc              → venv 활성화 + 작업 폴더"
echo "    toc-notebook     → Jupyter 실행"
echo "    → 브라우저에서 http://localhost:8888"
echo ""
echo "  Windows PyMOL에서 결과 보기:"
echo "    \\\\wsl\$\\Ubuntu\\home\\$USER\\toc_workshop\\"
echo ""
echo "  ML 노트북 (t022, t041-t048 등)은 GPU가 필요합니다."
echo "  해당 노트북은 Colab에서 실행하는 것을 권장합니다."
echo ""
echo "  source ~/.bashrc 또는 새 터미널을 여세요."
