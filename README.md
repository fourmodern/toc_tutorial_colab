# TeachOpenCADD Colab 실습

Google Colab에서 바로 실행할 수 있는 컴퓨터 기반 약물 설계(CADD) 실습 자료입니다.

[Volkamer Lab](https://volkamerlab.org)의 **[TeachOpenCADD](https://github.com/volkamerlab/teachopencadd)** 프로젝트를 기반으로 하며, Colab 호환성 수정(condacolab 제거, 패키지 버전 업데이트 등)이 적용되어 있습니다.

> **TeachOpenCADD** - A teaching platform for computer-aided drug design (CADD) using open source packages and data  
> In Silico Toxicology and Structural Bioinformatics, Institute of Physiology  
> Charite - Universitatsmedizin Berlin

---

## 기본 실습

화학정보학 및 CADD 입문 과정입니다. 화합물 데이터 수집부터 기계학습 기반 활성 예측, 단백질 구조 분석까지 다룹니다.

| 번호 | 주제 | 설명 | Colab |
|------|------|------|-------|
| T000 | 소개 | TeachOpenCADD 프로젝트 개요 및 실습 환경 안내 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/t000_talktorial.ipynb) |
| T001 | ChEMBL 데이터 조회 | ChEMBL API로 EGFR 표적의 활성 화합물 데이터를 수집하고 전처리 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/t001_talktorial.ipynb) |
| T002 | ADME 필터링 | 리핀스키 Rule of 5 등 약물 유사성 기준으로 화합물 필터링 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/t002_talktorial.ipynb) |
| T003 | 유해 부분구조 | PAINS 등 원치 않는 화학적 부분구조를 가진 화합물 제거 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/t003_talktorial.ipynb) |
| T004 | 화합물 유사도 | 분자 지문(fingerprint) 기반 화합물 간 유사도 계산 및 클러스터링 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/t004_talktorial.ipynb) |
| T005 | 화합물 클러스터링 | 최대 공통 부분구조(MCS) 기반 화합물 군집 분석 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/t005_talktorial.ipynb) |
| T006 | 최대 공통 부분구조 | MCS 알고리즘으로 화합물 간 공유 구조 패턴 탐색 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/t006_talktorial.ipynb) |
| T007 | 기계학습 스크리닝 | Random Forest로 분자 지문 기반 화합물 활성 분류 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/t007_talktorial.ipynb) |
| T008 | PDB 데이터 | Protein Data Bank에서 단백질 3D 구조 데이터 수집 및 분석 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/t008_talktorial.ipynb) |
| T009 | 리간드 약물단 | 3D 약물단(pharmacophore) 모델링을 통한 리간드 특성 분석 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/t009_talktorial.ipynb) |
| T010 | 결합부위 유사도 | 단백질 결합 부위 유사도 비교 및 오프타겟 예측 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/t010_talktorial.ipynb) |

---

## 심화 실습 (teachopencadd/)

### 화학정보학 및 구조 기반 약물 설계

| 번호 | 주제 | 설명 | Colab |
|------|------|------|-------|
| T000 | 소개 | TeachOpenCADD 프로젝트 개요 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t000_talktorial.ipynb) |
| T001 | ChEMBL 데이터 조회 | ChEMBL API 기반 화합물 데이터 수집 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t001_talktorial.ipynb) |
| T002 | ADME 필터링 | 약물 유사성 기준 화합물 필터링 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t002_talktorial.ipynb) |
| T003 | 유해 부분구조 | 원치 않는 부분구조 필터링 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t003_talktorial.ipynb) |
| T004 | 화합물 유사도 | 분자 지문 기반 유사도 및 클러스터링 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t004_talktorial.ipynb) |
| T005 | 화합물 클러스터링 | MCS 기반 군집 분석 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t005_talktorial.ipynb) |
| T006 | 최대 공통 부분구조 | MCS 알고리즘 활용 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t006_talktorial.ipynb) |
| T007 | 기계학습 스크리닝 | Random Forest 기반 활성 분류 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t007_talktorial.ipynb) |
| T008 | PDB 데이터 | 단백질 3D 구조 데이터 수집 및 분석 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t008_talktorial.ipynb) |
| T009 | 리간드 약물단 | 3D pharmacophore 모델링 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t009_talktorial.ipynb) |
| T010 | 결합부위 유사도 | 오프타겟 예측 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t010_talktorial.ipynb) |
| T011 | 웹서비스 API | UniProt, PDB, ChEMBL 등 온라인 API 활용 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t011_talktorial.ipynb) |
| T012 | KLIFS 데이터 | KLIFS 키나아제 데이터베이스에서 구조 데이터 수집 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t012_talktorial.ipynb) |
| T013 | PubChem 데이터 | PubChem API를 통한 화합물/분석 데이터 수집 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t013_talktorial.ipynb) |
| T014 | 결합 부위 탐지 | 단백질 표면에서 리간드 결합 포켓 자동 탐지 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t014_talktorial.ipynb) |
| T015 | 단백질-리간드 도킹 | 분자 도킹 시뮬레이션 실습 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t015_talktorial.ipynb) |
| T016 | 단백질-리간드 상호작용 | PLIP 기반 비공유 상호작용 분석 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t016_talktorial.ipynb) |
| T017 | NGLview 고급 | 분자 3D 시각화 고급 기능 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t017_talktorial.ipynb) |
| T018 | 리드 최적화 파이프라인 | 자동화된 리드 화합물 최적화 워크플로 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t018_talktorial.ipynb) |
| T019 | 분자 동역학 | OpenMM 기반 분자 동역학(MD) 시뮬레이션 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t019_talktorial.ipynb) |
| T020 | MD 분석 | MDAnalysis로 분자 동역학 궤적 분석 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t020_talktorial.ipynb) |
| T021 | One-Hot Encoding | 분자 표현을 위한 One-Hot 인코딩 기법 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t021_talktorial.ipynb) |
| T022 | 신경망 (TensorFlow) | TensorFlow/Keras 기반 리간드 활성 예측 신경망 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t022_talktorial.ipynb) |
| T022 | 신경망 (PyTorch) | 동일 주제의 PyTorch 버전 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t022_talktorial_torch.ipynb) |

### 분자 표현 및 딥러닝

| 번호 | 주제 | 설명 | Colab |
|------|------|------|-------|
| T033 | 분자 표현 | SMILES, 분자 지문, 그래프 등 다양한 분자 표현 방법 비교 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t033_talktorial.ipynb) |
| T034 | RNN 물성 예측 | 순환 신경망(RNN)으로 SMILES 기반 분자 물성 예측 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t034_talktorial.ipynb) |
| T035 | GNN 물성 예측 | 그래프 신경망(GNN)으로 분자 그래프 기반 물성 예측 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t035_talktorial.ipynb) |
| T037 | 불확실성 추정 | 분자 예측 모델의 예측 불확실성 정량화 기법 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t037_talktorial.ipynb) |
| T038 | 상호작용 예측 | 그래프 신경망 기반 단백질-리간드 상호작용 예측 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t038_talktorial.ipynb) |

### 생성 모델 및 AI 신약개발 (GPU 권장)

| 번호 | 주제 | 설명 | Colab |
|------|------|------|-------|
| T040 | VAE 분자 생성 | 변분 오토인코더로 약물 분자의 잠재 공간 학습 및 신규 분자 생성 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t040_talktorial.ipynb) |
| T041 | MolGen | 사전 학습 분자 생성 모델로 SMILES/SELFIES 기반 신규 분자 생성 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t041_molgen.ipynb) |
| T042 | MolT5 | T5 모델 기반 분자-텍스트 상호 변환 (분자 설명 생성) | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t042_molt5.ipynb) |
| T043 | VAE 심화 | VAE로 분자 잠재 공간에서 QED 최적화된 신규 분자 샘플링 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t043_vae.ipynb) |
| T045 | DiffDock | 확산 모델 기반 AI 분자 도킹 (단백질-리간드 결합 포즈 예측) | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t045_diffdock.ipynb) |
| T046 | RFdiffusion | RFdiffusion으로 목표 기능의 단백질 구조 de novo 설계 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t046_rfdiffusion.ipynb) |
| T047 | Chai-1 | Chai-1 모델로 단백질-리간드 복합체 3D 구조 예측 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t047_chai1.ipynb) |
| T048 | DDPM | Denoising Diffusion Probabilistic Model 원리 학습 및 이미지 생성 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t048_DDPM.ipynb) |
| T050 | RAG | PDF 문서 기반 로컬 RAG 파이프라인으로 신약개발 질의응답 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t050_simple-local-rag.ipynb) |
| T110 | ESM-2 | ESM-2 단백질 언어 모델로 펩타이드 결합 친화도 최적화 | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/fourmodern/toc_tutorial_colab/blob/main/teachopencadd/t110_esm2_peptide_optimization_tutorial.ipynb) |

---

## GPU 런타임 설정

"생성 모델 및 AI 신약개발" 섹션의 노트북은 GPU 런타임을 권장합니다.

Colab 메뉴 > 런타임 > 런타임 유형 변경 > T4 GPU 선택

---

## Colab 호환성 수정 사항

원본 TeachOpenCADD 노트북에 다음 수정이 적용되어 있습니다:

- `condacolab` + `conda install`을 `pip` 기반 설치로 전환
- 오래된 패키지 버전 핀(scipy, networkx, pandas 등) 업데이트
- `flash-attn` 설치 실패 시 graceful fallback 처리
- 누락된 pip install 추가 (torch, scikit-learn 등)
- GPU 하드코딩(`cuda:0`) 자동 감지 폴백 추가

---

## 원본 프로젝트

이 저장소는 **Volkamer Lab**의 **TeachOpenCADD** 프로젝트를 기반으로 합니다.

- 원본 저장소: https://github.com/volkamerlab/teachopencadd
- 소속: In Silico Toxicology and Structural Bioinformatics, Institute of Physiology, Charite - Universitatsmedizin Berlin
- 웹사이트: https://volkamerlab.org

### 인용

이 자료를 연구나 교육에 활용할 경우 아래 논문을 인용해 주세요.

```bibtex
@article{TeachOpenCADD2022,
    author = {Sydow, Dominique and Rodríguez-Guerra, Jaime and Kimber, Talia B and Schaller, David and Taylor, Corey J and Chen, Yonghui and Leja, Mareike and Misra, Sakshi and Wichmann, Michele and Ariamajd, Armin and Volkamer, Andrea},
    title = {TeachOpenCADD 2022: open source and FAIR Python pipelines to assist in structural bioinformatics and cheminformatics research},
    journal = {Nucleic Acids Research},
    year = {2022},
    volume = {50},
    number = {W1},
    pages = {W753--W760},
    doi = {10.1093/nar/gkac267},
}
```
