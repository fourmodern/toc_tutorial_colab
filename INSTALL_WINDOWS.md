# TeachOpenCADD Tutorial - Windows 설치 가이드

## 노트북 분류

| 구분 | 노트북 | 환경 | 비고 |
|------|--------|------|------|
| **Core** | t000-t007 | Colab / Docker / WSL | rdkit + 기본 라이브러리 |
| **Structural** | t008-t010 | Colab / Docker / WSL | + opencadd, MDAnalysis, nglview |
| **ML/DL** | t022, t041-t048 | **Colab 권장** (GPU) | PyTorch, Transformers 등 |
| **Advanced** | t050, t110 | **Colab 권장** (GPU) | LLM, ESM2 등 |

---

## 방법 1: Google Colab (권장, 설치 불필요)

1. https://colab.research.google.com 접속
2. GitHub 탭 → `fourmodern/toc_tutorial_colab` 검색
3. 원하는 노트북 선택 → 실행

---

## 방법 2: Docker (t000-t010)

### 사전 요구사항

- WSL2: PowerShell 관리자 → `wsl --install` → 재부팅
- Docker Desktop: https://www.docker.com/products/docker-desktop/ → 설치 → 재부팅

### 실행

```powershell
git clone https://github.com/fourmodern/toc_tutorial_colab.git
cd toc_tutorial_colab
docker compose up --build
```

첫 빌드: ~10-15분. 완료 후:

```
http://localhost:8888/?token=toc
```

### 종료

```powershell
docker compose down
```

---

## 방법 3: WSL2 직접 설치 (t000-t010)

### WSL 설치

PowerShell 관리자:
```powershell
wsl --install
```
재부팅 → Ubuntu 사용자 설정.

### 환경 설치

WSL 터미널:
```bash
git clone https://github.com/fourmodern/toc_tutorial_colab.git
cd toc_tutorial_colab
bash setup_wsl.sh
```

### 실행

```bash
source ~/.bashrc
toc-notebook
```

→ http://localhost:8888 접속.

### 결과 → Windows PyMOL

탐색기에서:
```
\\wsl$\Ubuntu\home\사용자명\toc_workshop\
```

---

## ML 노트북 (t022, t041-t048)

GPU가 필요한 노트북은 **Colab 무료 GPU**를 사용하세요:

1. Colab에서 노트북 열기
2. Runtime → Change runtime type → GPU (T4)
3. 순서대로 실행

WSL/Docker에서 실행하려면 추가 설치 필요:
```bash
pip install torch torchvision
pip install transformers datasets accelerate
pip install torch-geometric torch-scatter torch-sparse
```

---

## 문제 해결

| 증상 | 해결 |
|------|------|
| `wsl --install` 실패 | Windows 업데이트 후 재시도 |
| Docker 빌드 중 opencadd 실패 | `docker compose build --no-cache` |
| nglview 위젯 안 보임 | 셀에서 `jupyter nbextension enable --py widgetsnbextension` 실행 |
| `biopython` 버전 충돌 | `pip install biopython==1.77` |
| SWIG 관련 에러 | `sudo apt-get install swig` |
| Jupyter 접속 안 됨 | 방화벽에서 8888 포트 허용 |
