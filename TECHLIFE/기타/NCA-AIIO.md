NCA-AIIO Master Course

목표

NCA-AIIO 합격
AI 인프라 전체 구조 이해
NVIDIA 생태계 이해
AI Infrastructure Engineer 역량 확보

예상 분량은 약 35~45강입니다.

Module 1. AI Foundation
1강 AI란 무엇인가
2강 Machine Learning
3강 Deep Learning
4강 Transformer
5강 LLM
6강 Token
7강 Embedding
8강 Vector Database
9강 RAG
10강 Fine-tuning vs Training
11강 Inference
Module 2. GPU Architecture
12강 CPU Architecture
13강 GPU Architecture
14강 CUDA
15강 CUDA Core
16강 Tensor Core
17강 Streaming Multiprocessor(SM)
18강 Warp
19강 GPU Memory
20강 HBM
21강 PCIe
22강 NVLink
23강 NVSwitch
24강 Grace Hopper
25강 DGX
Module 3. AI Networking
26강 Ethernet
27강 InfiniBand
28강 RDMA
29강 GPUDirect RDMA
30강 NCCL
31강 AllReduce
32강 Spine-Leaf
Module 4. AI Storage
33강 Storage
34강 Object Storage
35강 Parallel File System
36강 Checkpoint
Module 5. AI Platform
37강 Docker
38강 Kubernetes
39강 GPU Operator
40강 Device Plugin
41강 MIG
42강 Time Slicing
43강 NVIDIA AI Enterprise
Module 6. AI Runtime
44강 TensorRT
45강 Triton
46강 NVIDIA NIM
47강 NeMo
Module 7. Operations
48강 DCGM
49강 Monitoring
50강 GPU Scheduling
51강 Capacity Planning
52강 장애 분석
Module 8. Final Review
53강 실무 시나리오
54강 예상문제
55강 모의고사
56강 최종 요약
각 강의는 동일한 형식으로 진행합니다.

예를 들어 CUDA라면 다음과 같은 구성을 따릅니다.

왜 필요한가?
등장 배경
개념
내부 구조
동작 원리
그림으로 이해
실무 적용
Kubernetes에서는?
DGX에서는?
시험 포인트
면접 질문
핵심 요약
예상 문제

즉, 단순히 "CUDA는 병렬 컴퓨팅 플랫폼입니다."에서 끝나지 않고 실무와 시험을 연결해서 학습합니다.

추가로 포함할 내용

강의마다 다음 요소를 함께 제공하겠습니다.

📖 개념 설명: 핵심 원리와 배경
🖼️ 구조도: 텍스트 또는 이미지로 구조 이해
💼 실무 적용: 운영 환경에서의 활용 사례
⚠️ 자주 하는 실수: 시험과 실무에서 헷갈리기 쉬운 부분
📝 NCA-AIIO 시험 포인트: 출제 가능성이 높은 내용
🎯 예상 문제: 객관식 및 해설
🚀 심화 학습: NCP-AII나 실제 AI 클러스터 운영으로 이어지는 내용
이 과정의 최종 목표

이 과정을 마치면 단순히 NCA-AIIO를 취득하는 수준을 넘어 다음 질문들에 자신 있게 답할 수 있게 되는 것을 목표로 하겠습니다.

GPU는 왜 CPU보다 AI에 유리한가?
CUDA는 실제로 어떤 역할을 하는가?
Tensor Core는 CUDA Core와 무엇이 다른가?
NVLink와 PCIe는 언제 각각 사용하는가?
NCCL은 왜 필요한가?
InfiniBand는 Ethernet과 무엇이 다른가?
Kubernetes는 GPU를 어떻게 관리하는가?
NVIDIA AI Enterprise는 어떤 문제를 해결하는가?
DGX는 일반 GPU 서버와 무엇이 다른가?

이러한 이해는 자격증뿐 아니라 실제 AI 인프라 설계와 운영에도 도움이 됩니다.


---


NCA-AIIO Master Course
Module 1. AI Foundation
제1강. AI란 무엇인가?
학습 목표

이번 강의를 마치면 다음 질문에 답할 수 있어야 합니다.

AI란 무엇인가?
AI는 왜 지금 세상을 바꾸고 있는가?
AI 시스템은 어떤 구성으로 이루어지는가?
AI 인프라 엔지니어는 어디를 담당하는가?
1. AI란 무엇인가?

AI(Artificial Intelligence)는 우리말로 인공지능입니다.

많은 사람들이 AI를 이렇게 생각합니다.

"사람처럼 생각하는 컴퓨터"

하지만 이는 다소 모호한 표현입니다.

NVIDIA와 AI 산업에서는 AI를 더 실용적으로 정의합니다.

데이터를 기반으로 학습하여 새로운 입력에 대해 적절한 결과를 생성하거나 예측하는 시스템

여기서 중요한 단어는 세 가지입니다.

데이터(Data)
학습(Learning)
추론(Inference)

AI는 이 세 요소를 중심으로 동작합니다.

2. 왜 AI가 지금 폭발적으로 성장했을까?

AI라는 개념은 1950년대부터 있었습니다.

그런데 왜 2020년대에 갑자기 AI가 급성장했을까요?

이유는 세 가지가 동시에 충족되었기 때문입니다.

① 데이터

과거에는 학습할 데이터가 부족했습니다.

현재는 인터넷, 스마트폰, SNS, 기업 데이터 등으로 방대한 데이터가 존재합니다.

예를 들어 ChatGPT가 자연스럽게 대화할 수 있는 이유는 엄청난 양의 텍스트 데이터를 학습했기 때문입니다.

② 컴퓨팅 파워

AI는 막대한 계산이 필요합니다.

CPU만으로는 너무 오래 걸립니다.

GPU가 등장하면서 수천 개의 연산을 동시에 수행할 수 있게 되었고, AI 학습 속도가 획기적으로 빨라졌습니다.

이 점이 NVIDIA가 AI 시대의 핵심 기업으로 성장한 이유입니다.

③ 알고리즘

2017년에 발표된 Transformer 구조는 AI 발전의 큰 전환점이었습니다.

현재의 대부분의 LLM(대규모 언어 모델)은 Transformer 기반입니다.

이후 GPT, Llama, Gemini 등의 모델이 등장했습니다.

핵심 정리

AI 발전 = 데이터 × GPU × 알고리즘

세 요소가 함께 발전하면서 지금의 AI 시대가 열렸습니다.

3. AI 시스템은 어떻게 구성되는가?

AI를 하나의 공장이라고 생각해 봅시다.

데이터
   │
   ▼
학습(Training)
   │
   ▼
모델(Model)
   │
   ▼
배포(Deployment)
   │
   ▼
추론(Inference)
   │
   ▼
사용자

각 단계를 살펴보겠습니다.

데이터

AI의 재료입니다.

예를 들어,

문서
이미지
음성
영상
센서 데이터

모두 데이터입니다.

학습(Training)

데이터를 이용해 모델의 가중치(Weights)를 조정하는 과정입니다.

이 단계에서 막대한 GPU 자원이 사용됩니다.

모델(Model)

학습이 완료된 결과물입니다.

예를 들어,

GPT
Llama
Mistral

등이 모두 모델입니다.

추론(Inference)

학습된 모델을 실제 서비스에서 사용하는 단계입니다.

예를 들어 사용자가

"서울 날씨 알려줘"

라고 질문하면 모델이 답변을 생성하는 과정이 추론입니다.

4. AI 인프라 엔지니어는 무엇을 하는가?

많은 사람들이 AI 엔지니어는 모두 모델을 만드는 사람이라고 생각합니다.

실제로는 역할이 나뉩니다.

역할	주요 업무
AI Researcher	새로운 모델 연구
ML Engineer	모델 개발 및 학습
Data Scientist	데이터 분석
MLOps Engineer	AI 운영 자동화
AI Infrastructure Engineer	GPU·네트워크·스토리지·클러스터 구축 및 운영

NCA-AIIO는 마지막 역할에 초점을 맞춘 자격입니다.

즉, 여러분이 관심을 두고 있는 AI Infrastructure Engineer의 역량을 검증합니다.

5. AI 인프라 엔지니어의 시야

AI 인프라 엔지니어는 모델 내부보다 모델이 안정적으로 학습되고 서비스될 수 있는 환경을 책임집니다.

사용자
   │
API
   │
Inference Server
   │
GPU
   │
CUDA
   │
GPU Driver
   │
Linux
   │
Network
   │
Storage

이 스택 중 상당 부분이 AI 인프라 엔지니어의 영역입니다.

여기에는 다음과 같은 기술이 포함됩니다.

Linux
Docker
Kubernetes
GPU Driver
CUDA
NCCL
NVLink
InfiniBand
Ethernet
스토리지
모니터링
6. AI 시스템을 도시로 비유하면

비유를 통해 역할을 구분해 봅시다.

AI 모델 → 도시에서 일하는 사람
GPU → 공장
네트워크 → 도로
스토리지 → 창고
Kubernetes → 도시 관리자
Docker → 표준화된 작업 공간
CUDA → 공장의 생산 방식

AI 인프라 엔지니어는 도시 전체가 원활하게 운영되도록 만드는 사람입니다.

7. 이번 강의에서 기억해야 할 핵심
AI는 데이터를 학습하여 새로운 입력에 대해 예측하거나 생성하는 시스템입니다.
AI 발전은 데이터 + GPU + 알고리즘의 결합으로 이루어졌습니다.
AI 시스템은 데이터 → 학습 → 모델 → 추론의 흐름으로 구성됩니다.
NCA-AIIO는 AI 모델 개발이 아니라 AI 인프라 구축과 운영에 초점을 둡니다.
시험 포인트 (NCA-AIIO)

다음 개념은 시험에서 자주 연결되어 출제될 가능성이 높습니다.

AI와 ML, DL의 관계
Training과 Inference의 차이
GPU가 CPU보다 AI 학습에 적합한 이유
AI 인프라 엔지니어의 역할
AI 시스템의 구성 요소
이해도 확인 문제
문제 1

AI 시스템의 기본 흐름으로 가장 적절한 것은 무엇입니까?

A. GPU → 데이터 → 모델 → 사용자

B. 데이터 → 학습 → 모델 → 추론

C. 모델 → 데이터 → 학습 → GPU

D. Docker → Kubernetes → GPU → 데이터

<details> <summary><strong>정답 보기</strong></summary>

정답: B

데이터를 사용해 모델을 학습하고, 완성된 모델을 추론 단계에서 사용자 요청에 활용하는 것이 AI 시스템의 기본 흐름입니다.

</details>
문제 2

다음 중 AI Infrastructure Engineer의 주요 책임에 해당하는 것은 무엇입니까?

A. 새로운 신경망 구조 설계

B. 데이터 라벨링

C. GPU 클러스터와 네트워크 운영

D. LLM 학습 데이터 작성

<details> <summary><strong>정답 보기</strong></summary>

정답: C

AI Infrastructure Engineer는 GPU, 네트워크, 스토리지, Kubernetes 등의 기반 인프라를 구축하고 운영합니다.

</details>
실무 연결

지금까지의 대화를 보면, 당신은 이미 Kubernetes, GPU Device Plugin, GPU Time Slicing, 네트워크, 클라우드 인프라를 다뤄왔습니다. 이 경험은 AI 인프라 스택의 중요한 기반입니다. 앞으로 배우게 될 CUDA, NVLink, NCCL, Triton 같은 기술은 그 위에 연결되는 퍼즐 조각이라고 생각하면 이해하기 쉽습니다.

---


NCA-AIIO Master Course
Module 1. AI Foundation
제2강. Machine Learning(머신러닝)
학습 목표

이번 강의를 마치면 다음 질문에 답할 수 있어야 합니다.

AI와 Machine Learning은 무엇이 다른가?
머신러닝은 어떻게 "학습"하는가?
지도학습, 비지도학습, 강화학습의 차이는 무엇인가?
AI 인프라 엔지니어가 머신러닝을 이해해야 하는 이유는 무엇인가?
1. AI와 Machine Learning은 같은 것일까?

많은 사람들이 AI와 머신러닝을 같은 의미로 사용하지만, 실제로는 포함 관계입니다.

Artificial Intelligence (AI)
│
├── Rule-based AI (규칙 기반)
│
└── Machine Learning (ML)
      │
      └── Deep Learning (DL)
             │
             └── LLM

즉,

AI는 가장 큰 개념입니다.
ML은 AI를 구현하는 방법 중 하나입니다.
DL은 ML의 한 분야입니다.
LLM은 DL을 활용한 대표적인 응용입니다.

핵심

AI ⊃ ML ⊃ DL ⊃ LLM

2. 머신러닝은 무엇을 학습하는가?

많은 사람들이 이렇게 생각합니다.

"AI가 지식을 외운다."

하지만 실제로는 패턴(Pattern)을 학습합니다.

예를 들어 고양이 사진 100만 장을 학습했다고 가정해 봅시다.

AI는

귀가 두 개 있다.
수염이 있다.
눈의 위치가 비슷하다.
얼굴 형태가 일정하다.

이런 특징을 하나씩 외우는 것이 아니라,

공통적인 패턴을 수학적으로 학습합니다.

그래서 처음 보는 고양이 사진도 고양이라고 판단할 수 있습니다.

3. 학습(Training)이란?

머신러닝에서 학습은 다음 과정을 반복하는 것입니다.

데이터 입력
      │
      ▼
예측
      │
      ▼
정답과 비교
      │
      ▼
오차 계산
      │
      ▼
가중치 수정
      │
      ▼
다시 예측

이 과정을 수백만~수십억 번 반복합니다.

학습의 핵심은

오차(Error)를 줄이는 것입니다.

4. 가중치(Weight)란?

가중치는 AI의 "기억"에 해당합니다.

예를 들어,

처음에는

고양이일 확률

30%

학습을 반복하면

65%

다시 반복하면

92%

이처럼 모델 내부의 수많은 가중치가 조금씩 수정되며 정확도가 높아집니다.

GPT 같은 LLM에는 수십억~수천억 개의 가중치가 존재할 수 있습니다.

5. 왜 GPU가 필요한가?

가중치를 수정하는 계산은 엄청나게 많습니다.

예를 들어

100억 개의 가중치가 있다면

매 학습마다

100억 번 이상의 계산

이 발생합니다.

CPU는 순차 처리에 강합니다.

CPU

작업1
작업2
작업3
작업4

GPU는 병렬 처리에 강합니다.

GPU

작업1 작업2 작업3 작업4
동시에 수행

그래서 AI 학습에는 GPU가 필수적인 경우가 많습니다.

6. 머신러닝의 세 가지 방식
① 지도학습(Supervised Learning)

가장 많이 사용됩니다.

데이터와 정답을 함께 제공합니다.

예시

사진 → 고양이

사진 → 강아지

사진 → 자동차

AI는

사진과 정답을 함께 보면서 학습합니다.

대표 사례

이미지 분류
이메일 스팸 필터
질병 진단
음성 인식
② 비지도학습(Unsupervised Learning)

정답이 없습니다.

AI가

스스로 비슷한 것끼리 그룹을 만듭니다.

예를 들어

고객 데이터를 넣으면

20대

30대

VIP

학생

직장인

처럼 스스로 분류합니다.

대표 사례

고객 군집화
이상 탐지
추천 시스템 일부
③ 강화학습(Reinforcement Learning)

보상을 받으며 학습합니다.

예를 들어

게임 AI

행동

↓

점수 획득

↓

좋은 행동 강화

대표 사례

AlphaGo
로봇 제어
자율주행 일부

LLM에서도 사람의 선호를 반영하는 단계에 강화학습이 활용됩니다(RLHF 등).

7. 머신러닝과 딥러닝의 차이

머신러닝

사람이 특징을 설계

↓

AI가 학습

예를 들어

"귀 길이"

"눈 크기"

등을 사람이 직접 정의하기도 합니다.

딥러닝

AI가 특징까지 스스로 학습

그래서

이미지

음성

텍스트

등에서 뛰어난 성능을 냅니다.

8. AI 인프라 엔지니어는 왜 머신러닝을 알아야 할까?

AI 인프라 엔지니어는 모델을 직접 개발하지 않을 수도 있습니다.

하지만 다음과 같은 질문에 답할 수 있어야 합니다.

왜 이 모델은 GPU 8장이 필요한가?

왜 학습은 며칠이 걸리는가?

왜 GPU 메모리가 부족한가?

왜 네트워크 대역폭이 중요한가?

이 질문들의 출발점은 모두 머신러닝 학습 과정에 있습니다.

예를 들어 대규모 모델은 여러 GPU에 분산되어 학습됩니다. 이때 GPU 간에 가중치와 계산 결과를 계속 주고받아야 하므로, GPU 성능뿐 아니라 네트워크(NVLink, InfiniBand 등)도 학습 속도에 큰 영향을 미칩니다. 이러한 내용은 이후 강의에서 자세히 다루겠습니다.

실무 연결

예를 들어 Kubernetes에서 다음과 같은 리소스를 봤다고 가정해 봅시다.

resources:
  limits:
    nvidia.com/gpu: 8

왜 GPU를 8개나 요청할까요?

답은

모델의 학습 시간을 줄이고, 큰 모델을 여러 GPU에 분산하여 처리하기 위해서입니다.

즉,

머신러닝을 이해하면

GPU 클러스터를 왜 그렇게 설계하는지도 이해하게 됩니다.

이번 강의 핵심 정리
AI는 큰 개념이고, 머신러닝은 AI를 구현하는 방법 중 하나입니다.
머신러닝은 데이터를 암기하는 것이 아니라 패턴을 학습합니다.
학습은 예측 → 오차 계산 → 가중치 수정의 반복입니다.
GPU는 대규모 병렬 계산을 통해 학습 속도를 크게 높입니다.
머신러닝은 크게 지도학습, 비지도학습, 강화학습으로 나뉩니다.
NCA-AIIO 시험 포인트

다음 개념은 자주 연결되어 출제될 가능성이 있습니다.

AI와 ML의 관계
Training과 Learning의 의미
Weight(가중치)의 역할
지도학습과 비지도학습의 차이
GPU가 머신러닝에 적합한 이유
이해도 확인 문제
문제 1

다음 중 머신러닝의 핵심 목적은 무엇입니까?

A. 데이터를 모두 암기한다.

B. 패턴을 학습하여 새로운 입력을 예측한다.

C. CPU의 성능을 높인다.

D. 운영체제를 자동으로 설치한다.

<details> <summary><strong>정답 및 해설</strong></summary>

정답: B

머신러닝은 데이터 속의 패턴을 학습하여 새로운 데이터에 대해 예측하거나 분류하는 것이 핵심입니다.

</details>
문제 2

다음 중 지도학습(Supervised Learning)의 특징은 무엇입니까?

A. 정답 없이 데이터를 학습한다.

B. 보상을 통해 학습한다.

C. 입력 데이터와 정답을 함께 사용한다.

D. GPU 없이만 동작한다.

<details> <summary><strong>정답 및 해설</strong></summary>

정답: C

지도학습은 입력 데이터와 정답(Label)을 함께 사용하여 모델을 학습시키는 방식입니다.

</details>


---

NCA-AIIO Master Course
Module 1. AI Foundation
제3강. Deep Learning(딥러닝)
학습 목표

이번 강의를 마치면 다음 질문에 답할 수 있어야 합니다.

왜 딥러닝이 등장했는가?
인공신경망(Artificial Neural Network)은 무엇인가?
은닉층(Hidden Layer)은 어떤 역할을 하는가?
딥러닝은 왜 GPU를 필요로 하는가?
AI 인프라 엔지니어 입장에서 딥러닝은 왜 중요한가?
지난 강의 복습

우리는 머신러닝이 패턴을 학습하는 기술이라는 것을 배웠습니다.

하지만 머신러닝에는 한 가지 한계가 있었습니다.

사람이 중요한 특징(Feature)을 직접 설계해야 하는 경우가 많다는 점입니다.

예를 들어 고양이를 분류하는 모델을 만든다고 가정해 봅시다.

사람이 다음과 같은 특징을 정의합니다.

귀 길이
눈 위치
수염 길이
얼굴 형태
꼬리 길이

즉,

사람이 먼저 무엇이 중요한지 알려주고 AI가 학습하는 방식이었습니다.

1. 딥러닝은 왜 등장했는가?

이 방식은 복잡한 문제에서 한계가 있었습니다.

예를 들어 사람 얼굴을 구분한다고 생각해봅시다.

사람은 얼굴을 보면 바로 알아보지만,

컴퓨터에게

눈 간격
코 길이
입 위치
얼굴 윤곽

을 모두 정의하는 것은 매우 어렵습니다.

그래서 등장한 것이 Deep Learning입니다.

사람이 특징을 설계하지 말고,

AI가 특징까지 스스로 학습하자.

이것이 딥러닝의 핵심 아이디어입니다.

2. 인공신경망(Artificial Neural Network)

딥러닝은 인간의 뇌를 그대로 흉내 낸 것이 아니라, 아이디어를 수학적으로 단순화한 모델입니다.

인간의 뇌에는 뉴런(Neuron)이 있습니다.

뉴런
 ↓
신호 전달
 ↓
다음 뉴런

AI에서는 이것을 매우 단순하게 표현합니다.

입력(Input)
      ↓
   Neuron
      ↓
출력(Output)

여러 뉴런을 연결하면 신경망(Neural Network)이 됩니다.

3. 신경망의 구조

가장 기본적인 구조는 다음과 같습니다.

입력층(Input Layer)

      ↓

은닉층(Hidden Layer)

      ↓

출력층(Output Layer)
입력층(Input Layer)

데이터가 들어오는 곳입니다.

예를 들어 이미지라면

고양이 사진

이 입력됩니다.

출력층(Output Layer)

최종 결과를 출력합니다.

예를 들어

고양이

92%

또는

강아지

7%

처럼 결과를 제공합니다.

은닉층(Hidden Layer)

딥러닝의 핵심입니다.

입력 데이터를 여러 단계로 분석하면서

점점 더 추상적인 특징을 학습합니다.

예를 들어 고양이 사진이라면

첫 번째 은닉층

직선

곡선

색상

↓

두 번째 은닉층

귀

눈

코

↓

세 번째 은닉층

얼굴 형태

몸통

꼬리

↓

출력

고양이

이처럼 계층이 깊어질수록 더 복잡한 특징을 학습합니다.

그래서 이름이 Deep Learning입니다.

4. 왜 "Deep"인가?

딥(Deep)은 계층(Layer)이 깊다는 의미입니다.

예를 들어

전통적인 머신러닝
입력

↓

출력

또는

입력

↓

은닉층 1개

↓

출력
딥러닝
입력

↓

Hidden

↓

Hidden

↓

Hidden

↓

Hidden

↓

출력

현대의 AI 모델은 수십에서 수백 개 이상의 Layer를 포함하기도 합니다.

5. 딥러닝은 어떻게 학습하는가?

학습 과정은 머신러닝과 동일한 큰 흐름을 따릅니다.

데이터 입력

↓

예측

↓

정답과 비교

↓

오차 계산

↓

가중치 수정

↓

반복

하지만 차이점은

가중치의 개수입니다.

머신러닝

→ 수천~수만 개

딥러닝

→ 수백만~수십억 개

LLM

→ 수십억~수천억 개

이 가중치를 계속 수정해야 하므로 계산량이 폭발적으로 증가합니다.

6. 왜 GPU가 필수인가?

신경망을 학습하려면 각 뉴런에서 수많은 행렬 연산(Matrix Multiplication)이 수행됩니다.

예를 들어

1000개의 입력

↓

1000개의 뉴런

이라면

약 100만 개의 연결에 대한 계산이 필요합니다.

실제 LLM은 이보다 훨씬 큰 규모입니다.

이런 연산은 대부분 서로 독립적이므로 동시에 계산할 수 있습니다.

GPU는 이런 대규모 병렬 연산에 최적화되어 있습니다.

이것이 GPU가 AI의 핵심 하드웨어가 된 이유입니다.

7. AI 인프라 엔지니어 관점에서 본 딥러닝

여기서부터 NCA-AIIO와 직접 연결됩니다.

딥러닝 모델이 커질수록

GPU 메모리가 부족합니다.
GPU 간 통신이 증가합니다.
스토리지에서 데이터를 빠르게 읽어야 합니다.
네트워크 병목이 생깁니다.
전력과 냉각 요구사항도 커집니다.

즉,

딥러닝의 발전은 AI 인프라의 발전을 요구합니다.

그래서 NVIDIA는 GPU만 만드는 회사가 아니라,

GPU
NVLink
NVSwitch
InfiniBand
DGX
CUDA
NCCL
AI Enterprise

까지 모두 제공합니다.

핵심은 GPU 하나가 아니라 AI 전체 인프라를 제공하는 것입니다.

실무 연결

당신이 Kubernetes에서 다음과 같은 설정을 본 적이 있을 것입니다.

resources:
  limits:
    nvidia.com/gpu: 8

왜 GPU를 8개나 사용할까요?

모델이 너무 커서 GPU 한 장의 메모리로는 부족하기 때문입니다.

여러 GPU에 모델과 데이터를 나누어 학습하려면 GPU 간 통신이 필요합니다.

그래서 앞으로 배우게 될

NVLink
NVSwitch
NCCL
InfiniBand

가 중요해집니다.

핵심 정리
딥러닝은 AI가 특징(Feature)까지 스스로 학습하는 기술입니다.
인공신경망은 입력층, 은닉층, 출력층으로 구성됩니다.
은닉층이 깊어질수록 더 복잡한 특징을 학습할 수 있습니다.
딥러닝은 막대한 행렬 연산을 수행하므로 GPU가 필수적입니다.
모델이 커질수록 GPU, 네트워크, 스토리지 등 인프라의 중요성이 커집니다.
NCA-AIIO 시험 포인트

다음 개념은 자주 연결되어 출제될 수 있습니다.

머신러닝과 딥러닝의 차이
인공신경망의 기본 구조
Hidden Layer의 역할
딥러닝에서 GPU가 중요한 이유
대규모 모델이 인프라에 미치는 영향
이해도 확인 문제
문제 1

딥러닝이 기존 머신러닝보다 뛰어난 이유로 가장 적절한 것은 무엇입니까?

A. CPU만 사용하기 때문이다.

B. 사람이 모든 특징을 직접 정의하기 때문이다.

C. AI가 데이터의 특징을 스스로 학습할 수 있기 때문이다.

D. 데이터가 필요 없기 때문이다.

<details> <summary><strong>정답 및 해설</strong></summary>

정답: C

딥러닝은 사람이 특징을 설계하는 부담을 줄이고, 데이터로부터 특징을 스스로 학습하는 것이 핵심입니다.

</details>
문제 2

다음 중 딥러닝 학습에 GPU가 널리 사용되는 가장 큰 이유는 무엇입니까?

A. 운영체제를 설치하기 쉽기 때문이다.

B. 병렬 행렬 연산을 매우 빠르게 수행할 수 있기 때문이다.

C. CPU보다 전력 소비가 항상 적기 때문이다.

D. 저장 용량이 크기 때문이다.

<details> <summary><strong>정답 및 해설</strong></summary>

정답: B

딥러닝은 행렬 곱셈과 같은 병렬 계산이 대부분을 차지하며, GPU는 이러한 연산을 효율적으로 처리하도록 설계되었습니다.

</details>

---

NCA-AIIO Master Course
Module 1. AI Foundation
제4강. Transformer - AI 혁명의 시작

이번 강의는 NCA-AIIO에서 가장 중요한 개념 중 하나입니다.

오늘날 GPT, Claude, Gemini, Llama, DeepSeek, Qwen 등 대부분의 최신 LLM은 모두 Transformer를 기반으로 만들어졌습니다.

학습 목표

이번 강의를 마치면 다음 질문에 답할 수 있어야 합니다.

Transformer는 왜 등장했는가?
기존 AI 모델(RNN, LSTM)의 한계는 무엇이었는가?
Self-Attention이란 무엇인가?
Transformer가 GPU와 왜 잘 맞는가?
AI 인프라 엔지니어가 Transformer를 이해해야 하는 이유는 무엇인가?
1. Transformer 이전의 AI

2017년 이전에는 자연어 처리(NLP)에서 주로 RNN(Recurrent Neural Network)과 LSTM(Long Short-Term Memory)이 사용되었습니다.

이 모델들은 문장을 한 단어씩 순서대로 처리했습니다.

예를 들어,

"나는 오늘 아침에 커피를 마셨다."

RNN은 다음과 같이 처리합니다.

나는
 ↓
오늘
 ↓
아침에
 ↓
커피를
 ↓
마셨다

즉,

앞 단어를 처리한 후에야 다음 단어를 처리할 수 있습니다.

2. RNN의 문제점

긴 문장을 생각해 보겠습니다.

"어제 친구와 함께 바다에 갔다가 저녁에 돌아와서 피곤했지만 오늘 아침 일찍 출근했다."

RNN은 마지막 단어인 "출근했다"를 이해하려면 앞의 모든 단어를 차례대로 거쳐야 합니다.

문장이 길어질수록

앞부분 정보를 잊어버리기 쉽고
학습 속도가 느려지며
GPU 병렬 처리가 어렵습니다.

이것을 Long-Term Dependency Problem(장기 의존성 문제)이라고 합니다.

3. Transformer의 등장

2017년 Google 연구진은 유명한 논문을 발표합니다.

Attention Is All You Need

이 논문에서 처음으로 Transformer 구조가 제안되었습니다.

Transformer의 핵심 아이디어는 매우 단순합니다.

"굳이 순서대로 읽지 말고, 모든 단어를 동시에 보고 중요한 관계만 찾자."

이것이 AI 발전의 큰 전환점이었습니다.

4. Self-Attention이란?

Transformer의 핵심은 Self-Attention입니다.

예를 들어,

"철수는 사과를 먹었다. 그는 배가 고팠다."

여기서

"그는"이 누구인지 이해하려면

AI는 앞 문장의 "철수"를 참고해야 합니다.

Transformer는 문장의 모든 단어가 서로를 참고합니다.

철수  ←→  그는

사과 ←→ 먹었다

배가 ←→ 고팠다

즉,

각 단어가

"나와 가장 관련 있는 단어가 무엇인가?"

를 계산합니다.

이 과정을 Attention이라고 합니다.

5. 왜 "Self" Attention인가?

Attention에는 여러 종류가 있습니다.

Self-Attention은

자기 자신의 문장 안에서 관계를 찾는 것

입니다.

예를 들어

고양이는 생선을 좋아한다.

Transformer는

"고양이"

"생선"

"좋아한다"

세 단어가 서로 얼마나 관련 있는지를 모두 계산합니다.

6. Transformer는 어떻게 처리할까?

RNN은

단어1

↓

단어2

↓

단어3

↓

단어4

순차적으로 처리합니다.

Transformer는

단어1 ─┐
단어2 ─┼── 동시에 처리
단어3 ─┤
단어4 ─┘

모든 단어를 한 번에 처리합니다.

7. GPU와 Transformer는 최고의 조합

여기서 NCA-AIIO와 연결됩니다.

Transformer는

수많은 행렬(Matrix) 연산을 수행합니다.

예를 들어

문장이 1,000개의 토큰이라면

수백만~수천만 번의 행렬 연산이 발생할 수 있습니다.

하지만

이 연산들은 대부분 동시에 수행할 수 있습니다.

GPU는

수천 개의 코어가

이 행렬 연산을 병렬 처리합니다.

그래서

Transformer는 GPU 성능을 매우 잘 활용합니다.

8. 왜 NVIDIA가 AI 시대를 주도하게 되었을까?

Transformer 이전에는

CPU만으로도 어느 정도 학습이 가능했습니다.

Transformer 이후에는

GPU 없이는

거대한 모델을 현실적인 시간 안에 학습하기 어려워졌습니다.

그래서

NVIDIA는

단순 GPU 제조사가 아니라

AI 컴퓨팅 플랫폼 기업이 되었습니다.

9. Transformer와 AI 인프라

Transformer 모델이 커질수록

필요한 것이 급격히 증가합니다.

더 큰 모델

↓

더 많은 GPU

↓

더 많은 GPU 메모리

↓

더 빠른 GPU 통신

↓

더 빠른 스토리지

↓

더 빠른 네트워크

이것이

AI Infrastructure가 중요한 이유입니다.

10. Transformer 이후 등장한 기술들

Transformer를 기반으로

수많은 AI 모델이 등장했습니다.

Transformer

│

├── GPT

├── BERT

├── Llama

├── Claude

├── Gemini

├── DeepSeek

└── Qwen

모두 Transformer를 기반으로 합니다.

11. AI 인프라 엔지니어 관점

당신은 앞으로

GPU 서버를 운영한다고 가정해봅시다.

사용자가

"GPT를 학습하고 싶습니다."

라고 요청하면

당신은

모델을 만드는 것이 아니라

다음을 제공합니다.

GPU Cluster
Kubernetes
CUDA
NCCL
NVLink
InfiniBand
Storage
Monitoring

즉,

Transformer가 잘 돌아갈 수 있는 환경을 만드는 것이 역할입니다.

실무 연결

이전에 Kubernetes에서 GPU Device Plugin과 Time Slicing을 다뤘던 경험을 떠올려 보세요.

그것은 GPU 자원을 Pod에 할당하는 단계였습니다.

하지만 Transformer 기반 모델을 여러 GPU에 분산 학습하려면 그 다음 단계가 필요합니다.

Pod

↓

CUDA

↓

GPU

↓

NCCL

↓

NVLink

↓

InfiniBand

앞으로 배우게 될 CUDA, NCCL, NVLink, InfiniBand는 모두 Transformer의 대규모 학습과 추론을 효율적으로 수행하기 위한 핵심 기술입니다.

핵심 정리
Transformer는 2017년 발표된 AI 모델 구조입니다.
기존 RNN의 장기 의존성과 순차 처리 문제를 해결했습니다.
Self-Attention으로 문장 전체의 관계를 한 번에 계산합니다.
병렬 행렬 연산이 많아 GPU와 매우 잘 맞습니다.
현대의 대부분의 LLM은 Transformer를 기반으로 합니다.
NCA-AIIO 시험 포인트

다음 개념은 시험에서 자주 연결될 가능성이 높습니다.

개념	핵심 포인트
Transformer	현대 LLM의 기반 구조
Self-Attention	단어 간 중요도를 계산하는 메커니즘
RNN과의 차이	순차 처리 vs 병렬 처리
GPU	Transformer의 대규모 행렬 연산 가속
AI Infrastructure	대규모 Transformer 학습 환경 제공
이해도 확인 문제
문제 1

Transformer가 기존 RNN보다 뛰어난 가장 큰 이유는 무엇입니까?

A. CPU만 사용하기 때문이다.

B. 단어를 순차적으로만 처리하기 때문이다.

C. Self-Attention을 이용하여 전체 문맥을 효율적으로 처리하기 때문이다.

D. 데이터를 저장하지 않기 때문이다.

<details> <summary><strong>정답 및 해설</strong></summary>

정답: C

Transformer는 Self-Attention을 통해 문장 전체의 관계를 계산하며, RNN의 순차 처리와 장기 의존성 문제를 크게 개선했습니다.

</details>
문제 2

Transformer가 GPU와 잘 맞는 이유는 무엇입니까?

A. GPU 메모리가 항상 더 크기 때문이다.

B. 대부분의 계산이 병렬 행렬 연산으로 이루어지기 때문이다.

C. CPU에서는 실행할 수 없기 때문이다.

D. GPU가 운영체제를 관리하기 때문이다.

<details> <summary><strong>정답 및 해설</strong></summary>

정답: B

Transformer는 행렬 곱셈과 같은 병렬 계산이 핵심이며, GPU는 이러한 연산을 매우 효율적으로 수행하도록 설계되어 있습니다.

💡 AI 인프라 엔지니어를 위한 한 걸음 더

이번 강의에서 가장 중요한 문장은 이것입니다.

Transformer는 AI 모델의 혁신이었고, GPU는 그 혁신을 현실로 만든 하드웨어였습니다.

NCA-AIIO는 Transformer 내부의 수학을 깊게 묻기보다, 왜 Transformer가 GPU·고속 네트워크·고성능 스토리지를 요구하는지를 이해하는지를 중요하게 봅니다.

이 관점을 가지고 이후 CUDA, Tensor Core, NVLink, NCCL을 배우면 각각이 Transformer를 빠르게 학습하고 추론하기 위해 존재하는 기술이라는 점이 자연스럽게 연결될 것입니다.


---

NCA-AIIO Master Course
Module 1. AI Foundation
제5강. LLM(Large Language Model)

이번 강의는 생성형 AI의 핵심입니다.

GPT, Claude, Gemini, Llama, DeepSeek, Qwen은 모두 LLM(Large Language Model) 입니다.

학습 목표

이번 강의를 마치면 다음 질문에 답할 수 있어야 합니다.

LLM이란 무엇인가?
GPT는 어떻게 만들어지는가?
파라미터(Parameter)는 무엇인가?
토큰(Token)은 무엇인가?
왜 LLM은 수천 개의 GPU를 사용하는가?
AI 인프라 엔지니어는 LLM을 어떻게 바라봐야 하는가?
1. LLM이란?

LLM은 Large Language Model의 약자입니다.

단어를 하나씩 보면 의미가 명확해집니다.

Large → 매우 큰 규모
Language → 인간의 언어를 다룸
Model → 학습된 AI 모델

즉,

방대한 텍스트를 학습하여 인간의 언어를 이해하고 생성하는 대규모 AI 모델입니다.

LLM은 "사람처럼 생각한다"기보다,

언어의 패턴을 매우 정교하게 학습한 모델이라고 이해하는 것이 정확합니다.

2. GPT는 무엇을 학습할까?

많은 사람들이

"GPT는 답을 외운다."

고 생각하지만 실제로는 그렇지 않습니다.

GPT는

문장 A

↓

다음에 올 단어는?

를 반복해서 학습합니다.

예를 들어

오늘 날씨가 매우

다음에 올 가능성이 높은 단어는

좋다
덥다
춥다

등입니다.

GPT는

다음 토큰(Next Token)을 예측하는 모델

입니다.

이 단순한 작업을 수조 번 반복하면서 언어 능력이 형성됩니다.

3. 토큰(Token)이란?

토큰은 LLM이 처리하는 최소 단위입니다.

중요한 점은

토큰 ≠ 단어

입니다.

예를 들어

안녕하세요.

가 하나의 토큰일 수도 있고,

안녕

하세요

.

처럼 여러 토큰으로 나뉠 수도 있습니다.

영어도 마찬가지입니다.

unbelievable

↓

un

believ

able

처럼 분리될 수 있습니다.

왜 토큰으로 나눌까?

컴퓨터는 문장을 그대로 이해하지 못합니다.

먼저

문장

↓

토큰

↓

숫자(ID)

↓

벡터(Vector)

로 변환해야 합니다.

예를 들어

나는 밥을 먹었다.

↓

[532]

[812]

[291]

[78]

↓

벡터 계산

이 과정을 통해 GPU가 계산할 수 있는 형태가 됩니다.

4. 파라미터(Parameter)란?

파라미터는 모델이 학습한 지식이 저장된 가중치(Weight)입니다.

예를 들어

GPT-2

15억 Parameter

Llama 3 70B

700억 Parameter

(모델마다 규모는 다르며, "B"는 Billion, 즉 10억을 의미합니다.)

파라미터가 많을수록

표현력이 높아질 가능성이 있지만,
반드시 더 좋은 모델이라는 의미는 아닙니다.

데이터 품질, 모델 구조, 학습 방법도 매우 중요합니다.

5. LLM은 어떻게 만들어질까?

큰 흐름은 다음과 같습니다.

인터넷 데이터

↓

전처리

↓

토큰화(Tokenization)

↓

Transformer

↓

GPU 학습

↓

LLM 완성

즉,

GPU는

Transformer를

수천~수만 번이 아니라

수조 번 실행합니다.

6. 왜 GPU가 수천 장 필요한가?

예를 들어

700억 파라미터 모델을 생각해 봅시다.

파라미터를 저장하려면 막대한 메모리가 필요합니다.

그리고

학습 과정에서는

Forward
Loss 계산
Backpropagation

을 반복합니다.

이 계산량은 매우 큽니다.

GPU 한 장으로는

메모리가 부족하거나
학습 시간이 지나치게 길어질 수 있습니다.

그래서

GPU 1

↓

GPU 8

↓

GPU 64

↓

GPU 512

↓

GPU 4096

처럼 여러 GPU를 함께 사용합니다.

7. GPU 여러 장을 사용하면 생기는 문제

여러 GPU를 사용한다고 끝이 아닙니다.

GPU끼리 계속 데이터를 교환해야 합니다.

예를 들어

GPU 1

가중치 수정

↓

GPU 2

동일한 정보 필요

↓

GPU 3

↓

GPU 4

↓

...

이런 통신이 매우 자주 발생합니다.

그래서 필요한 것이

NVLink
NVSwitch
InfiniBand
NCCL

입니다.

이 기술들은

GPU 간 통신을 빠르게 하기 위해 존재합니다.

8. LLM 학습과 추론의 차이

많은 사람들이 헷갈리는 부분입니다.

학습(Training)

목적

모델을 만드는 것

GPU 사용량

매우 큼

수백~수천 개 GPU 사용 가능

시간

수주~수개월

가중치

계속 변경됨

추론(Inference)

목적

이미 만들어진 모델 사용

GPU 사용량

상대적으로 적음(서비스 규모에 따라 달라질 수 있음)

시간

수 밀리초~수 초

가중치

변경되지 않음

비교
구분	Training	Inference
목적	모델 학습	모델 사용
가중치	변경됨	고정
GPU	매우 많이 사용	서비스 규모에 따라 조정
시간	오래 걸림	매우 짧음
9. AI 인프라 엔지니어의 역할

AI 연구자는

모델를 개발합니다.

AI 인프라 엔지니어는

모델이 학습되고 서비스될 환경을 제공합니다.

예를 들어

LLM 학습을 위해

다음을 설계합니다.

GPU

↓

CUDA

↓

NCCL

↓

InfiniBand

↓

Storage

↓

Kubernetes

↓

Monitoring

즉,

LLM을 직접 만드는 것이 아니라

LLM이 최고의 성능을 낼 수 있는 환경을 구축하는 사람입니다.

실무 연결

당신은 Kubernetes에서 GPU Device Plugin과 Time Slicing을 다뤄본 경험이 있습니다.

여기서 한 단계 더 나아가면,

학습 클러스터에서는 여러 GPU를 하나의 작업(Job)에 묶어 사용합니다.
추론 클러스터에서는 많은 사용자의 요청을 빠르게 처리하도록 GPU를 효율적으로 분배합니다.

이때 CUDA, NCCL, 고속 네트워크, 스케줄링 정책이 전체 성능을 좌우합니다.

핵심 정리
LLM은 대규모 언어 모델입니다.
GPT는 다음 토큰을 예측하도록 학습됩니다.
토큰은 LLM이 처리하는 기본 단위이며, 단어와 항상 일치하지 않습니다.
파라미터는 모델이 학습한 가중치입니다.
대규모 LLM은 여러 GPU와 고속 GPU 간 통신 기술을 필요로 합니다.
학습은 모델을 만드는 과정이고, 추론은 모델을 사용하는 과정입니다.
NCA-AIIO 시험 포인트

다음 개념은 자주 출제될 가능성이 있습니다.

개념	핵심 포인트
LLM	Transformer 기반 대규모 언어 모델
Token	모델이 처리하는 기본 단위
Parameter	학습된 가중치
Training	가중치 업데이트
Inference	고정된 가중치 사용
Multi-GPU	대규모 모델 학습을 위한 필수 구성
이해도 확인 문제
문제 1

LLM에서 토큰(Token)에 대한 설명으로 가장 적절한 것은 무엇입니까?

A. 반드시 하나의 단어를 의미한다.

B. GPU 메모리의 단위이다.

C. 모델이 처리하는 기본 입력 단위이다.

D. 파라미터와 같은 의미이다.

<details> <summary><strong>정답 및 해설</strong></summary>

정답: C

토큰은 LLM이 입력을 처리하는 기본 단위이며, 하나의 단어와 정확히 일치하지는 않습니다.

</details>
문제 2

Training과 Inference의 차이로 올바른 것은 무엇입니까?

A. Training에서는 가중치가 변경되지 않는다.

B. Inference에서는 가중치가 계속 수정된다.

C. Training은 모델을 학습시키고, Inference는 학습된 모델을 사용한다.

D. 두 과정은 동일하다.

<details> <summary><strong>정답 및 해설</strong></summary>

정답: C

Training은 모델의 가중치를 업데이트하는 과정이며, Inference는 완성된 모델을 이용해 예측 결과를 생성하는 과정입니다.

</details>
💡 AI 인프라 엔지니어를 위한 한 걸음 더

이번 강의에서 반드시 기억해야 할 연결 관계는 다음과 같습니다.

LLM
   │
   ▼
Transformer
   │
   ▼
행렬 연산
   │
   ▼
GPU
   │
   ▼
CUDA
   │
   ▼
여러 GPU 사용
   │
   ▼
NCCL
   │
   ▼
NVLink / InfiniBand

이 흐름은 앞으로 배우게 될 CUDA, Tensor Core, NVLink, NCCL, Triton, NIM까지 하나의 이야기로 이어집니다.


---

NCA-AIIO Master Course
Module 1. AI Foundation
제6강. Token(토큰) - LLM이 언어를 이해하는 방법

이번 강의는 LLM을 이해하는 핵심입니다.

"토큰"을 이해하면 Context Window, Embedding, RAG, Vector Database까지 자연스럽게 연결됩니다.

학습 목표

이번 강의를 마치면 다음 질문에 답할 수 있어야 합니다.

토큰(Token)은 정확히 무엇인가?
왜 LLM은 단어가 아니라 토큰을 사용할까?
Tokenizer는 어떤 역할을 하는가?
Context Window란 무엇인가?
왜 토큰 수가 GPU 메모리 사용량과 관련이 있는가?
AI 인프라 엔지니어는 토큰을 왜 알아야 하는가?
1. 사람과 AI는 언어를 다르게 본다

사람은 문장을 의미 단위로 이해합니다.

예를 들어,

"오늘 날씨가 정말 좋네요."

사람은 이 문장을 하나의 의미로 이해합니다.

하지만 컴퓨터는 문장을 그대로 계산할 수 없습니다.

LLM은 다음과 같은 과정을 거칩니다.

문장
   │
   ▼
Tokenizer
   │
   ▼
Token
   │
   ▼
Token ID
   │
   ▼
Vector(Embedding)
   │
   ▼
Transformer

즉, 문장을 계산 가능한 숫자로 변환하는 과정이 반드시 필요합니다.

2. Token은 무엇인가?

토큰은

LLM이 처리하는 최소 입력 단위

입니다.

많은 사람들이

"토큰 = 단어"

라고 생각하지만 그렇지 않습니다.

예를 들어

대한민국

하나의 토큰일 수도 있지만,

대한

민국

처럼 두 개의 토큰으로 나뉠 수도 있습니다.

영어도 마찬가지입니다.

internationalization

↓

intern

ation

al

ization

처럼 여러 토큰으로 나눌 수 있습니다.

3. 왜 단어 대신 토큰을 사용할까?

생각해 봅시다.

한국어에는

먹다
먹는다
먹었습니다
먹겠습니까
먹어봤다

등 수많은 형태가 있습니다.

만약 단어 하나하나를 모두 저장한다면

사전(Dictionary)이 너무 커집니다.

그래서 AI는

자주 등장하는 부분 문자열(Subword)을 학습합니다.

예를 들어

먹

었

습니다

처럼 분리하면

다양한 문장을 더 효율적으로 표현할 수 있습니다.

4. Tokenizer란?

Tokenizer는

문장을 토큰으로 분리하는 프로그램

입니다.

예를 들어

오늘 날씨가 좋다.

Tokenizer는

오늘

날씨

가

좋다

.

처럼 나눌 수도 있고,

다른 모델에서는

오늘

날씨가

좋

다

.

처럼 나눌 수도 있습니다.

즉,

모델마다 Tokenizer가 다를 수 있습니다.

5. Token ID

컴퓨터는 문자열을 직접 계산하지 않습니다.

토큰마다 번호(ID)를 부여합니다.

예를 들어

안녕

↓

1034
하세요

↓

2876

문장은

[1034, 2876]

처럼 숫자로 바뀝니다.

이 숫자가 GPU에서 계산됩니다.

6. Embedding으로 변환

숫자만으로는 의미를 계산하기 어렵습니다.

그래서 Token ID는 Embedding이라는 벡터로 변환됩니다.

예를 들어

1034

↓

[0.12, -0.81, 0.44, ...]

이 벡터에는

의미적인 특징이 담겨 있습니다.

예를 들어

"고양이"

와

"강아지"

는

벡터 공간에서 서로 가까울 가능성이 높습니다.

반면

"고양이"

와

"자동차"

는

멀리 떨어질 가능성이 큽니다.

다음 강의에서 Embedding을 더 깊게 다루겠습니다.

7. Context Window란?

LLM은

무한히 긴 문장을 한 번에 읽지 못합니다.

읽을 수 있는 최대 토큰 수가 있습니다.

이것이

Context Window

입니다.

예를 들어

4096 Token

또는

128K Token

처럼 표현합니다.

의미는

한 번에 처리 가능한 최대 토큰 수

입니다.

8. Context Window가 중요한 이유

예를 들어

100만 글자의 문서를 입력했다고 가정해봅시다.

LLM이

32K Token만 처리할 수 있다면

나머지는

읽을 수 없습니다.

그래서

기업들은

긴 문서 검색
RAG
Vector Database

기술을 함께 사용합니다.

9. 토큰 수가 늘어나면 GPU는 어떻게 될까?

여기부터 AI 인프라와 연결됩니다.

Transformer는

모든 토큰 사이의 관계를 계산합니다.

토큰이 많아질수록

계산량이 급격히 증가합니다.

예를 들어

100 Token

↓

매우 적은 계산

1000 Token

↓

훨씬 많은 계산

10000 Token

↓

매우 큰 GPU 메모리 필요

즉,

토큰이 많을수록

GPU Memory 증가
연산 증가
추론 시간 증가

가 발생합니다.

시험 포인트: Self-Attention의 계산량은 입력 토큰 수가 늘어날수록 매우 빠르게 증가합니다. 이것이 긴 문장을 처리할 때 더 많은 GPU 메모리와 계산 성능이 필요한 이유입니다.

10. Prompt도 결국 Token이다

사용자가 입력하는 Prompt도

모두 토큰입니다.

예를 들어

ChatGPT에게

안녕하세요.

↓

Tokenizer

↓

Token

↓

Transformer

↓

응답 생성

즉,

Prompt Engineering은

결국

토큰을 잘 사용하는 기술입니다.

11. AI 인프라 엔지니어 관점

사용자가

긴 문서를 넣으면

다음과 같은 일이 발생합니다.

긴 Prompt

↓

Token 증가

↓

GPU Memory 증가

↓

Attention 계산 증가

↓

응답 속도 감소

그래서

AI 인프라 엔지니어는

GPU 메모리
Batch Size
Context Length
Tensor Parallelism
KV Cache

등을 고려해야 합니다.

앞으로 모두 배우게 됩니다.

실무 연결

예를 들어, 추론 서버(예: Triton Inference Server, NVIDIA NIM 등)를 운영한다고 가정해 보겠습니다.

사용자 A는 100토큰짜리 질문을 보내고, 사용자 B는 20,000토큰에 달하는 긴 문서를 보냅니다.

두 요청은 동일한 "1건의 요청"이 아닙니다.

100토큰 요청은 상대적으로 적은 GPU 자원을 사용합니다.
20,000토큰 요청은 더 많은 GPU 메모리와 계산 시간을 요구합니다.

그래서 실제 운영에서는 토큰 수를 기준으로 요청을 제한하거나, 최대 입력 길이를 설정하는 경우가 많습니다.

핵심 정리
토큰은 LLM이 처리하는 최소 입력 단위입니다.
토큰은 단어와 항상 일치하지 않습니다.
Tokenizer가 문장을 토큰으로 분리합니다.
토큰은 Token ID를 거쳐 Embedding 벡터로 변환됩니다.
Context Window는 한 번에 처리 가능한 최대 토큰 수입니다.
토큰 수가 많아질수록 GPU 메모리 사용량과 계산량이 크게 증가합니다.
NCA-AIIO 시험 포인트
개념	핵심 포인트
Token	LLM의 기본 입력 단위
Tokenizer	문장을 토큰으로 분리
Token ID	토큰을 숫자로 변환
Embedding	숫자를 의미 벡터로 변환
Context Window	한 번에 처리 가능한 최대 토큰 수
GPU Memory	토큰 증가에 따라 사용량 증가
이해도 확인 문제
문제 1

다음 중 Token에 대한 설명으로 가장 적절한 것은?

A. 항상 하나의 단어와 같다.

B. GPU 메모리의 저장 단위이다.

C. LLM이 처리하는 기본 입력 단위이다.

D. 모델의 파라미터를 의미한다.

<details> <summary><strong>정답 및 해설</strong></summary>

정답: C

토큰은 LLM이 처리하는 최소 입력 단위이며, 하나의 단어와 반드시 일치하지는 않습니다.

</details>
문제 2

Context Window가 의미하는 것은 무엇입니까?

A. GPU 개수

B. 모델 크기

C. 한 번에 처리 가능한 최대 토큰 수

D. 학습 데이터 개수

<details> <summary><strong>정답 및 해설</strong></summary>

정답: C

Context Window는 모델이 한 번에 입력으로 받아 처리할 수 있는 최대 토큰 수를 의미합니다.

</details>
💡 AI 인프라 엔지니어를 위한 한 걸음 더

이번 강의에서 기억해야 할 가장 중요한 흐름은 다음과 같습니다.

사용자 입력(Prompt)
        │
        ▼
Tokenizer
        │
        ▼
Token
        │
        ▼
Token ID
        │
        ▼
Embedding
        │
        ▼
Transformer
        │
        ▼
GPU 연산
        │
        ▼
응답 생성

이 흐름은 앞으로 배울 Embedding, Vector Database, RAG를 이해하는 핵심 기반입니다.


---


NCA-AIIO Master Course
Module 1. AI Foundation
제7강. Embedding(임베딩) - AI는 의미를 어떻게 이해하는가?

이번 강의는 LLM, RAG, Vector Database를 연결하는 가장 중요한 개념입니다.

Embedding을 이해하면 "AI가 의미를 이해한다"는 말이 실제로 무엇인지 알 수 있습니다.

학습 목표

이번 강의를 마치면 다음 질문에 답할 수 있어야 합니다.

Embedding이란 무엇인가?
Token과 Embedding은 어떤 관계인가?
왜 단어를 벡터(Vector)로 바꾸는가?
의미가 비슷한 단어는 왜 가까이 위치하는가?
Vector Database는 Embedding을 어떻게 사용하는가?
AI 인프라 엔지니어는 왜 Embedding을 알아야 하는가?
지난 강의 복습

지난 강의에서 문장이 처리되는 과정을 배웠습니다.

문장
   │
Tokenizer
   │
Token
   │
Token ID
   │
???
   │
Transformer

여기서 **???**가 바로 Embedding입니다.

1. Embedding이란?

Embedding은 한 문장으로 정의하면

의미를 담고 있는 숫자 벡터(Vector)

입니다.

예를 들어

"고양이"

라는 단어는 GPU가 이해하지 못합니다.

하지만

고양이

↓

[0.23, -0.91, 0.42, ...]

이렇게 수백~수천 개의 숫자로 표현하면

GPU가 계산할 수 있습니다.

2. 왜 숫자로 바꿀까?

컴퓨터는

고양이

와

강아지

가 비슷한 의미인지 모릅니다.

하지만

Embedding에서는

고양이

↓

[0.31, -0.42, 0.87]
강아지

↓

[0.28, -0.39, 0.81]

처럼

매우 비슷한 벡터가 만들어집니다.

반면

자동차

↓

[-0.88, 0.73, -0.12]

처럼

의미가 다른 것은

멀리 떨어진 위치가 됩니다.

3. Vector Space란?

Embedding을 이해하려면

Vector Space를 알아야 합니다.

2차원으로 단순화해 보겠습니다.

              동물

         강아지

고양이

----------------------------

                자동차

                       비행기

실제로는

768차원

1024차원

3072차원

같은

매우 높은 차원입니다.

하지만 개념은 같습니다.

의미가 비슷하면 가까이 있습니다.

4. Embedding은 어떻게 만들어질까?

많은 사람들이

Embedding을 사람이 만드는 줄 압니다.

아닙니다.

LLM이 학습하면서

자동으로 생성됩니다.

예를 들어

고양이는 생선을 좋아한다.

강아지는 사료를 먹는다.

자동차는 달린다.

이런 문장을 수십억 개 학습하면

LLM은

"고양이"

와

"강아지"

가 비슷하다는 것을

스스로 학습합니다.

그래서

Embedding도

자동으로 형성됩니다.

5. Cosine Similarity

Embedding끼리

얼마나 비슷한지를 계산하는 대표적인 방법입니다.

이를 코사인 유사도(Cosine Similarity)라고 합니다.

쉽게 말하면

두 벡터가 같은 방향을 향하고 있는가?

를 계산합니다.

예를 들어

고양이

↗
강아지

↗

비슷한 방향

↓

유사도 높음

자동차

↓


다른 방향

↓

유사도 낮음

실제 값은

0.98

매우 비슷

0.12

거의 관계 없음

-0.35

상반된 의미에 가까움

6. Embedding은 어디에 사용될까?

생각보다

엄청나게 많이 사용됩니다.

검색

검색어

강아지

↓

비슷한 Embedding 검색

↓

반려견

애완견

강아지 사료

추천 시스템

넷플릭스

유튜브

쿠팡

모두

Embedding을 사용합니다.

챗봇

사용자 질문

↓

Embedding

↓

비슷한 문서 검색

↓

LLM 답변

7. RAG와 Embedding

여기서

RAG가 등장합니다.

예를 들어

회사 매뉴얼이 있다고 합시다.

100만 개 문서

LLM은

모두 기억하지 못합니다.

그래서

질문

↓

Embedding

↓

Vector Database 검색

↓

관련 문서 발견

↓

LLM에게 전달

↓

답변

이 과정이

RAG입니다.

즉,

Embedding이 없으면

RAG도 없습니다.

8. Vector Database

Vector Database는

일반 DB와 다릅니다.

일반 DB

WHERE ID=100

처럼

정확히 일치하는 데이터를 찾습니다.

Vector Database는

비슷한 의미

를 찾습니다.

예를 들어

사용자가

강아지 키우기

를 검색해도

DB는

반려견 입양

개 사료

애완견 건강

등을

함께 찾아냅니다.

왜?

Embedding이

가깝기 때문입니다.

9. AI 인프라 엔지니어 관점

RAG 서버를 운영한다고 가정해 봅시다.

질문 하나가 들어오면

Prompt

↓

Embedding Model

↓

Vector Database

↓

검색 결과

↓

LLM

↓

응답

이 모든 시스템을

운영해야 합니다.

즉

AI 인프라 엔지니어는

LLM만 관리하는 것이 아닙니다.

Embedding Model도 운영합니다.

Vector Database도 운영합니다.

GPU도 운영합니다.

Kubernetes도 운영합니다.

10. NVIDIA에서는?

NVIDIA는

Embedding도

GPU에서 매우 빠르게 수행합니다.

예를 들어

NVIDIA NIM에는

Embedding Model
LLM
Reranker

등이 모두 제공됩니다.

즉

RAG 전체를

GPU에서 수행할 수 있습니다.

참고: Reranker는 Vector Database가 찾은 여러 후보 문서를 다시 평가하여, 질문과 가장 관련성이 높은 순서로 재정렬하는 모델입니다.

실무 연결

실제 기업에서 "사내 AI 챗봇"을 만든다고 생각해 보겠습니다.

구성은 다음과 같습니다.

사내 PDF / Word / Wiki
         │
         ▼
Embedding 생성
         │
         ▼
Vector Database 저장
         │
         ▼
사용자 질문
         │
         ▼
질문 Embedding 생성
         │
         ▼
유사 문서 검색
         │
         ▼
LLM 답변 생성

여기서 LLM만 GPU를 사용하는 것이 아닙니다.

Embedding 모델
LLM
(선택적으로) Reranker

모두 GPU를 활용할 수 있습니다.

핵심 정리
Embedding은 의미를 표현하는 벡터입니다.
Token은 Embedding으로 변환되어 Transformer가 처리합니다.
의미가 비슷한 단어는 벡터 공간에서도 가깝게 위치합니다.
Vector Database는 유사한 벡터를 검색합니다.
RAG는 Embedding과 Vector Database를 활용하여 필요한 정보를 찾아 LLM에 제공합니다.
NCA-AIIO 시험 포인트
개념	핵심 포인트
Embedding	의미를 표현하는 벡터
Vector	숫자 배열
Cosine Similarity	벡터 간 의미 유사도 계산
Vector Database	의미 기반 검색
RAG	Embedding을 이용한 검색 증강 생성
이해도 확인 문제
문제 1

Embedding의 가장 적절한 설명은 무엇입니까?

A. GPU 메모리

B. 의미를 표현하는 숫자 벡터

C. 운영체제의 파일 형식

D. 모델의 파라미터 개수

<details> <summary><strong>정답 및 해설</strong></summary>

정답: B

Embedding은 단어나 문장의 의미를 수치 벡터로 표현한 것입니다.

</details>
문제 2

Vector Database의 특징으로 가장 적절한 것은 무엇입니까?

A. ID만 검색할 수 있다.

B. 의미가 비슷한 벡터를 검색한다.

C. GPU 드라이버를 저장한다.

D. 모델을 학습시키는 데이터베이스이다.

<details> <summary><strong>정답 및 해설</strong></summary>

정답: B

Vector Database는 Embedding 벡터 간의 유사도를 이용해 의미적으로 가까운 데이터를 검색합니다.

</details>
💡 AI 인프라 엔지니어를 위한 한 걸음 더

지금까지 배운 내용을 하나의 흐름으로 연결해 보겠습니다.

사용자 질문
        │
        ▼
Tokenizer
        │
        ▼
Token
        │
        ▼
Embedding
        │
        ├──────────────┐
        ▼              │
Transformer            │
        │              │
        ▼              │
LLM 응답               │
                       │
        Embedding ─────┘
              │
              ▼
      Vector Database
              │
              ▼
        관련 문서 검색
              │
              ▼
       LLM에 추가 정보 제공(RAG)

여기서 중요한 사실이 하나 있습니다.

Embedding은 LLM의 "부가기능"이 아닙니다.

Embedding은 LLM, RAG, Vector Database, 검색 시스템을 하나로 연결하는 핵심 기술입니다.


---

NCA-AIIO Master Course
Module 1. AI Foundation
제8강. Vector Database - AI는 어떻게 "의미"로 검색하는가?

이번 강의는 RAG의 심장입니다.

일반 데이터베이스는 "같은 값" 을 찾습니다.

Vector Database는 "비슷한 의미" 를 찾습니다.

학습 목표

이번 강의를 마치면 다음 질문에 답할 수 있어야 합니다.

Vector Database란 무엇인가?
일반 DB와 무엇이 다른가?
왜 AI에서는 Vector Database가 필요한가?
ANN(Approximate Nearest Neighbor)이란 무엇인가?
대표적인 Vector DB는 무엇인가?
AI 인프라 엔지니어는 어떤 관점으로 운영해야 하는가?
지난 강의 복습

지난 시간에는

문장
 ↓
Embedding
 ↓
Vector

를 배웠습니다.

그런데 질문이 생깁니다.

벡터는 어디에 저장할까?

바로

Vector Database입니다.

1. 일반 Database는 어떻게 검색할까?

예를 들어 고객 정보가 있다고 합시다.

ID	이름	나이
100	홍길동	30
101	김철수	28
102	이영희	35

검색은

SELECT *
FROM Customer
WHERE ID=101;

처럼 합니다.

즉,

정확히 일치하는 값(Exact Match)

을 찾습니다.

2. 하지만 AI는 다르다

사용자가

"강아지를 키우고 싶어요."

라고 질문했습니다.

문서에는

"반려견 입양 가이드"

만 있습니다.

일반 DB라면

검색 실패입니다.

왜냐하면

"강아지"

≠

"반려견"

이기 때문입니다.

하지만 사람은

두 문장이

비슷한 의미라는 것을 압니다.

AI도 그렇게 검색해야 합니다.

3. Vector Database는 의미를 저장한다

Embedding을 이용하면

강아지

↓

[0.24, 0.61, -0.17]
반려견

↓

[0.22, 0.59, -0.18]

두 벡터가 매우 가깝습니다.

그래서

Vector Database는

"강아지"를 검색하면 "반려견"도 함께 찾을 수 있습니다.

4. 일반 DB와 Vector DB 비교
일반 DB	Vector DB
ID 검색	의미 검색
정확한 값	비슷한 의미
SQL 중심	벡터 검색
관계형 데이터	Embedding 데이터
B-Tree Index	Vector Index(HNSW, IVF 등)
5. 왜 Vector DB가 필요한가?

예를 들어

회사에

PDF

Word

Excel

Wiki

메일

회의록

설계서

100만 개가 있습니다.

LLM은

모두 기억할 수 없습니다.

그래서

질문이 들어오면

질문

↓

Embedding

↓

Vector Database

↓

관련 문서

↓

LLM

이 과정을 수행합니다.

6. RAG 전체 구조
사용자 질문

↓

Embedding Model

↓

Question Vector

↓

Vector Database

↓

가장 비슷한 문서

↓

LLM

↓

답변 생성

여기서

Vector Database는

검색 엔진입니다.

LLM은

답변 생성기입니다.

둘은 역할이 다릅니다.

7. ANN이란?

여기서 중요한 개념이 나옵니다.

ANN

Approximate Nearest Neighbor

뜻은

가장 가까운 벡터를 매우 빠르게 찾는 기술

입니다.

왜 필요할까요?

예를 들어

벡터가

100개

라면

모두 비교해도 됩니다.

하지만

10억 개

라면?

전부 비교하면

몇 초~수십 초 이상이 걸릴 수 있습니다.

AI 서비스는

0.2초 안에 응답해야 합니다.

그래서

ANN 알고리즘을 사용합니다.

8. ANN의 개념

모든 집을 방문하면 정확하지만 오래 걸립니다.

A

↓

B

↓

C

↓

D

↓

E

ANN은

지도를 보고

가장 가까운 곳부터 탐색합니다.

A

↓

D

↓

E

약간의 정확도를 희생하는 대신

엄청나게 빠릅니다.

실제 서비스에서는

거의 모두

ANN을 사용합니다.

9. 대표적인 ANN 알고리즘

시험에서는 이름 정도만 알아두면 충분합니다.

HNSW

가장 많이 사용됩니다.

특징

매우 빠름
검색 정확도 높음
메모리 사용량이 큼
IVF

큰 데이터를

여러 그룹으로 나눕니다.

검색 시

관련 그룹만 탐색합니다.

PQ

벡터를 압축합니다.

메모리를 절약합니다.

대규모 데이터에서 사용됩니다.

10. 대표적인 Vector Database

시험에서 자주 등장하는 것들입니다.

제품	특징
FAISS	Meta가 개발한 벡터 검색 라이브러리
Milvus	대표적인 오픈소스 Vector DB
Qdrant	API 중심, 사용이 간편
Weaviate	GraphQL 지원
pgvector	PostgreSQL 확장 기능
OpenSearch Vector	검색과 벡터 검색을 함께 지원
11. AI 인프라 엔지니어 관점

Vector DB도

결국 하나의 서비스입니다.

운영해야 합니다.

고려사항은

Storage
Memory
Index
Backup
Replica
High Availability
Kubernetes

입니다.

LLM만 운영하는 것이 아닙니다.

12. GPU는 어디서 사용할까?

많은 사람들이

Vector Database도

GPU를 사용한다고 생각합니다.

실제로는

구조가 조금 다릅니다.

Embedding 생성

↓

GPU

↓

Vector Database

↓

CPU 또는 GPU

↓

LLM

↓

GPU

Embedding과

LLM은

GPU 사용량이 큽니다.

Vector DB는 제품에 따라

CPU 중심인 경우도 많고,

일부는 GPU 가속을 지원합니다.

시험 포인트: Vector Database 자체가 반드시 GPU를 사용하는 것은 아닙니다. 어떤 제품은 CPU 기반으로도 매우 높은 성능을 제공합니다.

13. 실제 기업의 RAG 구조
사용자

↓

API Gateway

↓

Embedding Model

↓

Vector Database

↓

Top-K 검색

↓

LLM

↓

답변

여기서

Top-K는

예를 들어

Top 5

라면

가장 비슷한 문서

5개를 가져옵니다.

LLM은

그 문서를 읽고

답변을 만듭니다.

실무 연결

예를 들어, 사내 규정 문서를 검색하는 AI 챗봇을 운영한다고 가정해 봅시다.

사용자가

"재택근무 신청은 어떻게 하나요?"

라고 질문하면,

Vector Database는 정확히 "재택근무 신청"이라는 문구가 없어도,

"원격근무 운영 지침"
"근무 형태 변경 절차"
"하이브리드 근무 정책"

같이 의미가 가까운 문서를 찾아 LLM에 전달할 수 있습니다.

이것이 키워드 검색과 의미 검색의 가장 큰 차이입니다.

핵심 정리
Vector Database는 Embedding 벡터를 저장하고 검색합니다.
일반 DB는 정확한 값을, Vector DB는 의미가 비슷한 데이터를 찾습니다.
RAG는 Vector Database를 이용해 관련 문서를 검색한 후 LLM에 제공합니다.
ANN은 대규모 벡터를 빠르게 검색하기 위한 핵심 기술입니다.
Vector Database는 CPU 기반이 일반적이지만, 일부 제품은 GPU 가속도 지원합니다.
NCA-AIIO 시험 포인트
개념	핵심 포인트
Vector Database	의미 기반 검색
Embedding	벡터 표현
ANN	빠른 근사 최근접 이웃 검색
HNSW	대표적인 벡터 인덱스
Top-K	가장 유사한 K개의 결과 반환
RAG	검색 결과를 LLM에 제공
이해도 확인 문제
문제 1

Vector Database의 가장 큰 특징은 무엇입니까?

A. ID를 가장 빠르게 검색한다.

B. SQL만 사용할 수 있다.

C. 의미적으로 유사한 데이터를 검색한다.

D. GPU 드라이버를 저장한다.

<details> <summary><strong>정답 및 해설</strong></summary>

정답: C

Vector Database는 Embedding 벡터를 이용해 의미적으로 유사한 데이터를 검색합니다.

</details>
문제 2

ANN(Approximate Nearest Neighbor)을 사용하는 가장 큰 이유는 무엇입니까?

A. GPU를 설치하기 위해

B. 벡터를 암호화하기 위해

C. 대규모 벡터를 빠르게 검색하기 위해

D. 모델을 학습하기 위해

<details> <summary><strong>정답 및 해설</strong></summary>

정답: C

ANN은 수백만~수십억 개의 벡터 중에서 유사한 벡터를 빠르게 찾기 위한 알고리즘입니다.

</details>
💡 AI 인프라 엔지니어를 위한 한 걸음 더

지금까지의 흐름을 연결해 보겠습니다.

사용자 질문
      │
      ▼
Tokenizer
      │
      ▼
Token
      │
      ▼
Embedding
      │
      ▼
Vector Database
      │
      ▼
Top-K 문서 검색
      │
      ▼
LLM(Transformer)
      │
      ▼
답변 생성

여기서 중요한 사실이 하나 있습니다.

LLM은 "모든 것을 기억"하지 않습니다.

최신 기업용 AI 시스템은 대부분 LLM + Vector Database + RAG의 조합으로 구축됩니다. 이 구조를 이해하면 AI 인프라 설계의 큰 그림을 볼 수 있습니다.

🎓 심화 학습: NCA-AIIO를 넘어

NCA-AIIO 수준에서는 "Vector Database가 무엇인지"를 이해하는 것이 중요합니다.

하지만 실무에서는 다음과 같은 질문도 자주 다룹니다.

Embedding 모델은 어디에서 실행할 것인가?
Vector Index(HNSW)의 메모리 사용량은 얼마나 되는가?
Top-K 값을 5에서 20으로 늘리면 응답 품질과 지연 시간은 어떻게 달라지는가?
수억 개 벡터를 어떻게 샤딩(Sharding)할 것인가?

이러한 내용은 이후 AI Infrastructure 심화 과정에서 함께 다루겠습니다.


---

NCA-AIIO Master Course
Module 1. AI Foundation
제9강. RAG(Retrieval-Augmented Generation)

이번 강의는 지금까지 배운 모든 내용을 하나로 연결하는 강의입니다.

Token → Embedding → Vector Database → LLM

이 모든 것이 RAG 안에서 하나의 시스템으로 동작합니다.

학습 목표

이번 강의를 마치면 다음 질문에 답할 수 있어야 합니다.

RAG란 무엇인가?
왜 RAG가 등장했는가?
LLM만으로는 무엇이 부족한가?
RAG는 어떻게 Hallucination(환각)을 줄이는가?
AI 인프라 엔지니어는 RAG 시스템을 어떻게 운영하는가?
1. LLM만으로는 충분하지 않다

많은 사람들이 생각합니다.

"LLM은 모든 것을 알고 있다."

하지만 실제로는 그렇지 않습니다.

예를 들어 회사에서 AI 챗봇을 만들었다고 가정해 보겠습니다.

사용자가 질문합니다.

"우리 회사의 2026년 연차 정책은 어떻게 되나요?"

LLM은 일반적인 연차 제도는 설명할 수 있습니다.

하지만

우리 회사의 내부 정책은 학습하지 않았습니다.

따라서 정확한 답을 할 수 없습니다.

2. LLM의 한계

대표적인 한계는 다음과 같습니다.

① 최신 정보를 모른다.

학습 이후 변경된 정보는 기본적으로 알지 못합니다.

예를 들어

오늘 발표된 사내 공지
어제 수정된 매뉴얼

은 기본 LLM에는 없습니다.

② 회사 내부 문서를 모른다.

예를 들어

인사 규정
설계 문서
운영 매뉴얼
금융 내부 절차

등은 학습 데이터에 포함되어 있지 않습니다.

③ Hallucination(환각)

모르는 내용도

그럴듯하게 대답할 수 있습니다.

예를 들어

존재하지 않는 규정을

마치 있는 것처럼 설명하는 경우가 있습니다.

3. 그래서 RAG가 등장했다

RAG는

Retrieval-Augmented Generation

입니다.

단어를 나누면

Retrieval → 검색
Augmented → 보강
Generation → 생성

즉,

검색으로 정보를 보강한 후 답변을 생성하는 방식

입니다.

4. RAG의 핵심 아이디어

LLM에게

억지로 모든 정보를 기억시키지 말자.

필요할 때

검색해서

같이 읽게 하자.

사람도 비슷합니다.

모든 법률을 외우지 않습니다.

필요하면

검색해서 읽습니다.

5. RAG 전체 구조

이번 강의에서 가장 중요한 그림입니다.

사용자 질문
      │
      ▼
Tokenizer
      │
      ▼
Embedding Model
      │
      ▼
Question Vector
      │
      ▼
Vector Database
      │
      ▼
Top-K 문서 검색
      │
      ▼
Prompt 생성
      │
      ▼
LLM
      │
      ▼
답변

여기까지가

기업 AI 서비스의 표준 구조입니다.

6. Prompt는 어떻게 만들어질까?

예를 들어

사용자가

"VPN 신청은 어떻게 하나요?"

라고 질문했습니다.

Vector DB가

다음 문서를 찾았습니다.

VPN 신청 절차

1. 포털 로그인

2. 보안 승인

3. 관리자 승인

LLM에게는

실제로

이런 Prompt가 전달됩니다.

다음 문서를 참고하여 답변하세요.

[문서]

VPN 신청 절차

1. 포털 로그인

2. 보안 승인

3. 관리자 승인

[질문]

VPN 신청은 어떻게 하나요?

LLM은

검색된 문서를 읽고

답변을 생성합니다.

7. Hallucination이 줄어드는 이유

LLM만 사용하는 경우

질문

↓

LLM 기억

↓

답변

RAG를 사용하는 경우

질문

↓

검색

↓

관련 문서

↓

LLM

↓

답변

즉

추측하지 않고

문서를 참고합니다.

그래서

환각(Hallucination)이 크게 줄어듭니다.

중요: RAG가 Hallucination을 완전히 없애지는 않습니다. 검색된 문서의 품질이 낮거나, 관련 문서를 찾지 못하거나, LLM이 문서를 잘못 해석하면 여전히 잘못된 답변이 나올 수 있습니다.

8. RAG는 학습이 아니다

시험에서 자주 나오는 부분입니다.

많은 사람들이

RAG를

학습(Training)이라고 생각합니다.

아닙니다.

RAG는

검색

+

Prompt 생성

입니다.

모델의

파라미터는

변하지 않습니다.

즉

Training이 아닙니다.

9. Fine-tuning과 RAG 차이
Fine-tuning	RAG
모델을 다시 학습	검색 후 문서 제공
파라미터 변경	파라미터 변경 없음
시간 오래 걸림	즉시 적용 가능
GPU 많이 사용	상대적으로 적음
새로운 문서 반영 어려움	새로운 문서 즉시 반영 가능
10. 기업은 왜 RAG를 선택할까?

예를 들어

회사에

100TB 문서

가 있습니다.

새 문서가

매일 추가됩니다.

Fine-tuning을

매일 할까요?

불가능합니다.

그래서

문서를

Vector DB에 넣습니다.

질문이 들어오면

검색합니다.

끝입니다.

즉

RAG는

실시간 문서 검색에

매우 적합합니다.

11. AI 인프라 엔지니어 관점

여기부터 중요합니다.

RAG 시스템은

LLM 하나만 운영하는 것이 아닙니다.

API Gateway

↓

Embedding Model

↓

Vector Database

↓

Reranker (선택)

↓

LLM

↓

Monitoring

↓

Logging

모든 서비스를

운영해야 합니다.

12. Kubernetes에서는?

실제로는

다음처럼

Pod가 나뉩니다.

Embedding Pod

↓

Vector DB Pod

↓

LLM Pod

↓

API Pod

각각

별도의 Deployment로

운영됩니다.

GPU는

Embedding

LLM

Reranker

등이

사용할 수 있습니다.

13. NVIDIA에서는?

NVIDIA AI Enterprise에서는

이 구성을 쉽게 구축할 수 있도록

다양한 구성 요소를 제공합니다.

예를 들어

NIM LLM
NIM Embedding
NeMo Retriever
CUDA
TensorRT-LLM

등을 조합하여

RAG 서비스를 구축할 수 있습니다.

14. 실제 기업의 RAG 아키텍처
                     사내 문서
      PDF / Word / Wiki / Git / Confluence
                      │
               문서 수집(Ingestion)
                      │
                문서 분할(Chunking)
                      │
             Embedding 생성(GPU)
                      │
              Vector Database 저장
                      │
────────────────────────────────────────

                 사용자 질문
                      │
                 API Gateway
                      │
              질문 Embedding 생성
                      │
             Vector Database 검색
                      │
             Top-K 문서 검색
                      │
             (선택) Reranker
                      │
      Prompt + 검색 문서 결합
                      │
                  LLM 추론
                      │
                  최종 답변

Chunking(청킹)은 긴 문서를 작은 단위(예: 500~1000토큰)로 나누는 과정입니다. 너무 크게 나누면 검색 정확도가 떨어지고, 너무 작게 나누면 문맥이 끊길 수 있습니다.

AI 인프라 관점에서 중요한 병목

RAG 시스템에서는 병목이 LLM에만 있는 것이 아닙니다.

구성 요소	주요 병목
Embedding Model	GPU 사용률, 처리량
Vector Database	검색 지연 시간, 메모리
Reranker	GPU 사용량
LLM	GPU 메모리, 추론 속도
API	동시 요청 수, 응답 시간

따라서 AI 인프라 엔지니어는 전체 파이프라인을 하나의 시스템으로 바라봐야 합니다.

핵심 정리
RAG는 검색 기반 생성 기술입니다.
LLM의 파라미터를 변경하지 않습니다.
Vector Database에서 관련 문서를 검색하여 LLM에 제공합니다.
최신 정보와 사내 문서를 활용할 수 있습니다.
Hallucination을 줄이는 데 도움이 되지만 완전히 제거하지는 않습니다.
기업용 생성형 AI 서비스의 핵심 아키텍처입니다.
NCA-AIIO 시험 포인트
개념	핵심 포인트
RAG	검색으로 정보를 보강한 생성
Retrieval	관련 문서 검색
Vector Database	의미 기반 검색
Fine-tuning	모델 자체를 다시 학습
Hallucination	RAG로 감소 가능하지만 완전 제거는 아님
Prompt Augmentation	검색 문서를 Prompt에 추가
이해도 확인 문제
문제 1

RAG의 가장 큰 특징은 무엇입니까?

A. 모델의 파라미터를 계속 수정한다.

B. GPU를 사용하지 않는다.

C. 관련 문서를 검색하여 LLM에 제공한다.

D. Vector Database가 필요 없다.

<details> <summary><strong>정답 및 해설</strong></summary>

정답: C

RAG는 관련 문서를 검색한 후 LLM이 이를 참고하여 답변을 생성하는 방식입니다.

</details>
문제 2

다음 중 Fine-tuning과 RAG의 차이로 올바른 것은 무엇입니까?

A. 둘 다 모델 파라미터를 변경한다.

B. RAG는 모델을 다시 학습한다.

C. Fine-tuning은 학습이고, RAG는 검색 기반 생성이다.

D. 둘은 동일한 기술이다.

<details> <summary><strong>정답 및 해설</strong></summary>

정답: C

Fine-tuning은 모델 자체를 다시 학습하는 것이고, RAG는 검색한 정보를 Prompt에 추가하여 활용하는 방식입니다.

</details>
💡 AI 인프라 엔지니어를 위한 한 걸음 더

지금까지 1~9강을 배우면서 하나의 흐름이 완성되었습니다.

사용자 질문
      │
      ▼
Tokenizer
      │
      ▼
Token
      │
      ▼
Embedding
      │
      ▼
Vector Database
      │
      ▼
Top-K 검색
      │
      ▼
Prompt Augmentation
      │
      ▼
Transformer(LLM)
      │
      ▼
GPU 추론
      │
      ▼
최종 응답

이 흐름은 현재 대부분의 기업에서 구축하는 생성형 AI 서비스의 기본 구조입니다.

📌 Module 1 종료

여기까지가 AI Foundation입니다.

이제부터는 AI 모델을 이해하는 단계에서 AI 인프라를 이해하는 단계로 넘어갑니다.

다음 Module에서는 본격적으로 GPU와 NVIDIA 기술을 다룹니다.

다음 강의 예고

Module 2 - GPU Architecture

제10강: CPU Architecture vs GPU Architecture

다음 강의에서는 AI 인프라의 핵심인 GPU를 깊이 이해합니다.

CPU와 GPU의 근본적인 차이
왜 AI는 CPU가 아닌 GPU를 사용하는가?
CPU는 언제 유리하고 GPU는 언제 유리한가?
Streaming Multiprocessor(SM)의 개념
CUDA Core의 등장 배경

이 강의부터는 NCA-AIIO에서 가장 비중이 높은 NVIDIA GPU 아키텍처를 본격적으로 시작합니다.


---


NCA-AIIO Master Course
Module 2. GPU Architecture
제10강. CPU Architecture vs GPU Architecture

이번 강의는 NCA-AIIO에서 가장 중요한 강의 중 하나입니다.

앞으로 배울 CUDA, Tensor Core, NVLink, NCCL을 이해하려면 반드시 CPU와 GPU의 차이를 정확히 이해해야 합니다.

학습 목표

이번 강의를 마치면 다음 질문에 답할 수 있어야 합니다.

CPU와 GPU는 무엇이 다른가?
GPU는 왜 AI에 적합한가?
GPU는 CPU를 대체하는가?
AI 서버에서 CPU와 GPU는 각각 어떤 역할을 하는가?
AI 인프라 엔지니어는 CPU와 GPU를 어떻게 함께 설계해야 하는가?
1. CPU와 GPU는 목적부터 다르다

많은 사람들이 이렇게 생각합니다.

GPU = CPU보다 빠른 CPU

이것은 틀린 생각입니다.

CPU와 GPU는 서로 다른 목적을 가지고 설계되었습니다.

CPU	GPU
범용 프로세서	병렬 연산 프로세서
복잡한 작업 처리	동일한 작업의 대량 반복 처리
낮은 지연시간(Low Latency)	높은 처리량(High Throughput)
운영체제 실행	대규모 계산 가속

즉,

CPU는 "생각하는 관리자", GPU는 "대규모 작업을 수행하는 공장"이라고 볼 수 있습니다.

2. 비유로 이해하기

회사에 직원이 있다고 생각해 봅시다.

CPU
사장 8명

각자 매우 똑똑함

복잡한 의사결정 가능
GPU
직원 10,000명

한 가지 작업만 매우 빠르게 수행

예를 들어

100만 장의 사진을 분석해야 합니다.

CPU

사진

↓

한 장씩 분석

GPU

사진1
사진2
사진3
사진4
...

동시에 분석
3. CPU 내부 구조

CPU는

적은 수의 매우 강력한 코어를 가지고 있습니다.

예를 들어

CPU

Core 1

Core 2

Core 3

Core 4

...

Cache

Branch Prediction

Out-of-Order Execution

CPU는

분기 처리(if)
운영체제
데이터베이스
웹 서버
파일 시스템

같은 복잡한 작업에 최적화되어 있습니다.

4. GPU 내부 구조

GPU는

수천 개의 작은 연산 유닛으로 이루어집니다.

GPU

CUDA Core

CUDA Core

CUDA Core

CUDA Core

...

수천 개

각 코어는 CPU 코어보다 단순하지만,

엄청난 개수로 동시에 계산합니다.

5. CPU와 GPU의 차이

예를 들어

숫자 100만 개를 더한다고 합시다.

CPU

1

↓

2

↓

3

↓

4

GPU

1 2 3 4 5 6 7 ...

동시에

이것이

병렬 처리(Parallel Processing)입니다.

6. 왜 AI는 GPU를 사용할까?

Transformer에서는

엄청난 양의

행렬 곱셈(Matrix Multiplication)이 발생합니다.

예를 들어

A 행렬

×

B 행렬

=

C 행렬

이 계산은

수백만~수조 번 반복됩니다.

이런 계산은

서로 독립적입니다.

GPU는

모두 동시에 계산합니다.

CPU는

이런 작업에 비효율적입니다.

7. Latency vs Throughput

시험에서 자주 등장하는 개념입니다.

CPU

목표

Latency 최소화

한 작업을

가능한 빨리 끝내는 것이 중요합니다.

예를 들어

웹 요청

사용자

↓

응답

10ms
GPU

목표

Throughput 최대화

많은 작업을

동시에 처리합니다.

예를 들어

10000개 이미지

↓

동시에 처리
쉽게 비교
구분	CPU	GPU
중요 지표	Latency	Throughput
강점	빠른 응답	대량 처리
대표 업무	웹 서버	AI 학습
8. CPU와 GPU는 함께 일한다

AI 서버는

GPU만 있는 것이 아닙니다.

CPU

↓

GPU

↓

Storage

↓

Network

CPU가

GPU에게

명령을 내립니다.

예를 들어

데이터 읽기

↓

CPU

↓

GPU 메모리 복사

↓

CUDA 실행

↓

GPU 계산

↓

CPU 결과 수신

즉,

GPU는 혼자 동작하지 않습니다.

9. AI 서버 구조

실제 AI 서버는

다음과 같이 구성됩니다.

             CPU
              │
       PCIe / NVLink
              │
 ┌──────┬──────┬──────┐
 │ GPU1 │ GPU2 │ GPU3 │ GPU4 │
 └──────┴──────┴──────┘
              │
           Storage
              │
          Ethernet /
          InfiniBand

여기서

CPU는

데이터 준비
스케줄링
I/O
운영체제

GPU는

AI 계산

을 담당합니다.

10. GPU가 모든 작업에 좋은 것은 아니다

이것은 시험에서 자주 나오는 오해입니다.

GPU가 항상 빠른 것은 아닙니다.

예를 들어

if A:

   if B:

      if C:

         ...

같은

복잡한 분기 처리는

CPU가 훨씬 잘합니다.

GPU는

동일한 계산을

반복하는 작업에 최적입니다.

11. AI 인프라 엔지니어 관점

AI 서버를 구축한다고 가정해 봅시다.

다음 요소를 모두 고려해야 합니다.

CPU 코어 수
CPU 메모리
GPU 개수
GPU 메모리(HBM)
PCIe Lane
NVLink
NVSwitch
Storage
Network

GPU만 많이 넣는다고 좋은 서버가 아닙니다.

CPU가 데이터를 충분히 공급하지 못하면 GPU는 놀게 됩니다.

이 현상을 CPU Bottleneck이라고 합니다.

실무 연결

예를 들어 Kubernetes에서 다음과 같은 Pod를 실행한다고 가정해 봅시다.

resources:
  requests:
    cpu: "2"
    memory: "8Gi"
    nvidia.com/gpu: 1

이 Pod는 CPU와 GPU를 함께 요청합니다.

왜일까요?

CPU는 데이터 전처리, 파일 읽기, 네트워크 통신 등을 담당합니다.
GPU는 모델 학습이나 추론을 담당합니다.

CPU를 너무 적게 할당하면 GPU가 충분한 데이터를 받지 못해 사용률(GPU Utilization)이 떨어질 수 있습니다.

핵심 정리
CPU는 범용 프로세서이고, GPU는 병렬 연산 프로세서입니다.
CPU는 낮은 지연시간, GPU는 높은 처리량에 최적화되어 있습니다.
AI는 대규모 행렬 연산이 많기 때문에 GPU가 매우 유리합니다.
GPU는 CPU를 대체하지 않으며 함께 동작합니다.
AI 서버는 CPU, GPU, 메모리, 스토리지, 네트워크를 균형 있게 설계해야 합니다.
NCA-AIIO 시험 포인트
개념	핵심 포인트
CPU	범용 처리, 낮은 지연시간
GPU	병렬 처리, 높은 처리량
Latency	작업 하나를 얼마나 빨리 끝내는가
Throughput	일정 시간 동안 얼마나 많은 작업을 처리하는가
CPU Bottleneck	CPU 성능 부족으로 GPU가 대기하는 현상
Matrix Multiplication	GPU가 특히 강점을 보이는 연산
이해도 확인 문제
문제 1

GPU가 CPU보다 AI 학습에 적합한 가장 큰 이유는 무엇입니까?

A. 운영체제를 더 잘 실행하기 때문이다.

B. 병렬 행렬 연산을 효율적으로 수행하기 때문이다.

C. 캐시 메모리가 항상 더 크기 때문이다.

D. 클럭 속도가 항상 더 높기 때문이다.

<details> <summary><strong>정답 및 해설</strong></summary>

정답: B

딥러닝은 행렬 곱셈과 같은 병렬 연산이 대부분이며, GPU는 이러한 작업을 대규모로 동시에 수행하도록 설계되었습니다.

</details>
문제 2

다음 중 CPU의 주요 역할로 가장 적절한 것은 무엇입니까?

A. 수천 개의 동일한 연산을 병렬 수행한다.

B. GPU 간 통신을 담당한다.

C. 운영체제 실행과 복잡한 제어 작업을 수행한다.

D. HBM 메모리를 제공한다.

<details> <summary><strong>정답 및 해설</strong></summary>

정답: C

CPU는 운영체제 실행, 제어, 스케줄링, I/O 등 복잡한 범용 작업을 담당합니다.

</details>
💡 AI 인프라 엔지니어를 위한 한 걸음 더

이번 강의는 앞으로 배울 모든 GPU 기술의 출발점입니다.

지금까지는 "GPU가 병렬 처리를 잘한다"는 수준이었다면, 이제는 왜 그런지를 알아볼 차례입니다.

다음 강의부터는 GPU 내부를 해부합니다.

GPU
 │
 ├── Streaming Multiprocessor(SM)
 │
 ├── CUDA Core
 │
 ├── Tensor Core
 │
 ├── Register
 │
 ├── Shared Memory
 │
 ├── L2 Cache
 │
 └── HBM

이 각각의 구성 요소가 AI 성능에 어떤 영향을 주는지 차례대로 살펴보겠습니다.

---


NCA-AIIO Master Course
Module 2. GPU Architecture
제11강. GPU Architecture - NVIDIA GPU는 내부에서 어떻게 동작하는가?

이번 강의는 NCA-AIIO에서 가장 중요한 GPU 아키텍처 강의입니다.

앞으로 배울 CUDA, Tensor Core, HBM, NVLink를 이해하려면 GPU 내부 구조를 먼저 이해해야 합니다.

학습 목표

이번 강의를 마치면 다음 질문에 답할 수 있어야 합니다.

GPU는 내부적으로 어떻게 구성되어 있는가?
SM(Streaming Multiprocessor)이란 무엇인가?
CUDA Core는 어디에 존재하는가?
Thread, Warp, Block은 무엇인가?
GPU는 어떻게 수천 개의 연산을 동시에 수행하는가?
1. GPU를 도시로 비유해보자

CPU는 작은 회사입니다.

GPU는 하나의 거대한 산업도시입니다.

GPU
│
├── SM #1
├── SM #2
├── SM #3
├── ...
├── SM #100+
│
└── HBM Memory

GPU에는 하나의 거대한 연산기가 있는 것이 아니라,

SM(Streaming Multiprocessor)이라는 연산 유닛이 수십~수백 개 존재합니다.

SM이 GPU의 실제 계산을 수행하는 핵심 구성 요소입니다.

2. SM(Streaming Multiprocessor)이란?

SM은 GPU의 기본 연산 단위입니다.

CPU에서 "Core"가 중요한 것처럼,

GPU에서는 SM이 가장 중요한 구성 요소입니다.

예를 들어 단순화하면

GPU
│
├── SM 1
├── SM 2
├── SM 3
├── SM 4
└── ...

각 SM은 독립적으로 작업을 수행합니다.

3. SM 내부 구조

SM 하나를 확대하면 다음과 같습니다.

Streaming Multiprocessor (SM)

 ├── CUDA Core
 ├── CUDA Core
 ├── CUDA Core
 ├── CUDA Core
 ├── Tensor Core
 ├── Register File
 ├── Shared Memory
 ├── Warp Scheduler
 └── Load / Store Unit

즉,

SM은 하나의 작은 CPU가 아니라

여러 연산 유닛을 포함한 작은 연산 공장입니다.

4. CUDA Core는 어디에 있을까?

많은 사람들이

GPU = CUDA Core

라고 생각합니다.

실제로는 아닙니다.

구조는 다음과 같습니다.

GPU

↓

SM

↓

CUDA Core

즉,

CUDA Core는

SM 안에 존재합니다.

예를 들어

GPU

↓

120개의 SM

↓

각 SM 안에 여러 CUDA Core

처럼 구성됩니다.

시험 포인트: CUDA Core는 GPU 전체에 흩어져 있는 것이 아니라 각 SM 내부에 포함되어 있습니다.

5. Thread란?

GPU는

작업을 아주 작은 단위로 나눕니다.

이 작은 실행 단위를

Thread

라고 합니다.

예를 들어

이미지 10,000장을 처리한다면

이미지 1

↓

Thread 1
이미지 2

↓

Thread 2

이런 식으로

수많은 Thread가 생성됩니다.

6. Warp란?

여기가 매우 중요합니다.

GPU는

Thread를 하나씩 실행하지 않습니다.

32개의 Thread를 하나의 Warp로 묶어서 실행합니다.

Warp

Thread 1

Thread 2

...

Thread 32

Warp는

GPU 스케줄링의 기본 단위입니다.

즉,

GPU는

Thread가 아니라 Warp를 실행합니다.

7. Block이란?

Warp보다 큰 단위입니다.

예를 들어

Block

Warp 1

Warp 2

Warp 3

Warp 4

하나의 Block에는

여러 Warp가 들어갑니다.

그리고

Block은

SM 하나에 할당됩니다.

Block

↓

SM
8. Grid란?

Kernel이 실행되면

수많은 Block이 만들어집니다.

Grid

↓

Block 1

Block 2

Block 3

Block 4

각 Block은

SM으로 분산됩니다.

전체 실행 구조
Grid

↓

Block

↓

Warp (32 Thread)

↓

Thread

이 구조는 CUDA 프로그래밍의 핵심입니다.

9. 실제 실행 과정

예를 들어

1,000,000개의 데이터를 계산한다고 합시다.

1,000,000 Data

↓

1,000,000 Thread

↓

31,250 Warp

↓

수천 개의 Warp가

여러 SM에서 동시에 실행

GPU는

이 과정을 매우 빠르게 수행합니다.

10. Warp Scheduler

SM 안에는

Warp Scheduler가 있습니다.

역할은

Warp 1

Warp 2

Warp 3

Warp 4

중에서

현재 실행할 Warp를 선택하는 것입니다.

예를 들어

Warp가

메모리를 기다리는 동안

다른 Warp를 실행합니다.

이렇게 해서

GPU는 놀지 않습니다.

11. Register와 Shared Memory

SM 안에는

빠른 메모리도 있습니다.

Register

가장 빠른 메모리입니다.

Thread마다

자신의 Register를 가집니다.

Thread

↓

Register
Shared Memory

Block 안의 Thread들이

공유하는 메모리입니다.

Block

↓

Shared Memory

↓

Thread들이 공동 사용

HBM까지 접근하지 않아도 되므로

속도가 매우 빠릅니다.

12. 왜 GPU는 빠를까?

GPU의 성능은

단순히 CUDA Core 개수 때문만은 아닙니다.

다음 요소가 함께 작동합니다.

수십~수백 개의 SM
수많은 CUDA Core
Warp 실행
Warp Scheduler
Register
Shared Memory

이들이 동시에 병렬 처리를 수행합니다.

13. AI 인프라 엔지니어 관점

AI 인프라 엔지니어는 CUDA 코드를 작성하지 않을 수도 있습니다.

하지만 다음과 같은 질문에는 답할 수 있어야 합니다.

GPU Utilization이 낮은 이유는 무엇인가?
SM이 충분히 사용되고 있는가?
Memory Bandwidth가 병목인가?
Warp가 대기하고 있는가?
Tensor Core가 활용되고 있는가?

이런 개념을 이해하면 GPU 모니터링 도구(예: DCGM, Nsight Systems)의 지표도 훨씬 쉽게 해석할 수 있습니다.

실무 연결

예를 들어 NVIDIA DCGM에서 다음과 같은 지표를 봤다고 가정해 보겠습니다.

지표	값
GPU Utilization	35%
SM Utilization	32%
Memory Utilization	95%

이 경우 무엇을 의심할 수 있을까요?

가능성 중 하나는 계산 성능이 아니라 메모리 대역폭이 병목이라는 것입니다.

즉,

SM은 더 계산하고 싶지만,
HBM에서 데이터를 가져오는 속도가 충분하지 않아 대기하는 상황일 수 있습니다.

이처럼 GPU 운영에서는 SM 사용률과 메모리 사용률을 함께 해석하는 것이 중요합니다.

핵심 정리
GPU는 여러 개의 SM으로 구성됩니다.
SM은 GPU의 실제 연산을 담당하는 핵심 단위입니다.
CUDA Core는 SM 내부에 존재합니다.
GPU는 Thread가 아니라 Warp(32 Thread)를 실행 단위로 사용합니다.
Block은 하나 이상의 Warp로 구성되며 SM에 배치됩니다.
Register와 Shared Memory는 SM 내부의 고속 메모리입니다.
NCA-AIIO 시험 포인트
개념	핵심 포인트
SM	GPU의 기본 연산 단위
CUDA Core	SM 내부의 연산 유닛
Thread	가장 작은 실행 단위
Warp	32개의 Thread로 구성된 실행 단위
Block	여러 Warp를 포함하며 하나의 SM에 배치
Grid	Kernel 실행 시 생성되는 전체 Block 집합
Shared Memory	Block 내 Thread가 공유하는 고속 메모리
이해도 확인 문제
문제 1

GPU에서 실제 계산을 수행하는 핵심 단위는 무엇입니까?

A. HBM

B. PCIe

C. SM(Streaming Multiprocessor)

D. NVLink

<details> <summary><strong>정답 및 해설</strong></summary>

정답: C

GPU는 여러 개의 SM으로 구성되며, 각 SM이 실제 연산을 수행합니다.

</details>
문제 2

Warp에 대한 설명으로 가장 올바른 것은 무엇입니까?

A. 여러 GPU를 연결하는 기술이다.

B. 32개의 Thread로 구성된 GPU의 기본 실행 단위이다.

C. GPU 메모리의 한 종류이다.

D. CUDA Core의 다른 이름이다.

<details> <summary><strong>정답 및 해설</strong></summary>

정답: B

NVIDIA GPU에서는 일반적으로 32개의 Thread를 하나의 Warp로 묶어 실행합니다.

</details>
💡 AI 인프라 엔지니어를 위한 한 걸음 더

이번 강의에서 가장 중요한 계층 구조는 아래와 같습니다.

GPU
 │
 ├── SM
 │     │
 │     ├── CUDA Core
 │     ├── Tensor Core
 │     ├── Warp Scheduler
 │     ├── Register File
 │     └── Shared Memory
 │
 └── HBM

앞으로 배우게 될 거의 모든 기술은 이 구조 위에서 동작합니다.

CUDA는 CUDA Core를 활용합니다.
TensorRT는 Tensor Core를 적극 활용합니다.
NCCL은 여러 GPU 간 통신을 최적화합니다.
NVLink는 GPU와 GPU를 더 빠르게 연결합니다.


---

NCA-AIIO Master Course
Module 2. GPU Architecture
제12강. CUDA Core와 Tensor Core - AI 성능을 결정하는 두 개의 엔진

이번 강의는 NVIDIA GPU를 이해하는 핵심입니다.

많은 사람들이 "CUDA Core가 많으면 GPU가 빠르다"고 생각하지만, AI에서는 Tensor Core가 성능을 좌우하는 경우가 많습니다.

학습 목표

이번 강의를 마치면 다음 질문에 답할 수 있어야 합니다.

CUDA Core란 무엇인가?
Tensor Core란 무엇인가?
둘은 어떤 차이가 있는가?
AI 학습과 추론에서 왜 Tensor Core가 중요한가?
FP32, FP16, BF16, FP8은 무엇인가?
H100, B200 같은 AI GPU는 왜 Tensor Core를 강조하는가?
지난 강의 복습

GPU 내부 구조는 다음과 같습니다.

GPU
 │
 ├── SM
 │     │
 │     ├── CUDA Core
 │     ├── Tensor Core
 │     ├── Register
 │     ├── Shared Memory
 │     └── Warp Scheduler
 │
 └── HBM

이번에는 CUDA Core와 Tensor Core의 역할을 자세히 살펴보겠습니다.

1. CUDA Core란?

CUDA Core는 GPU의 범용 연산 장치(ALU)입니다.

쉽게 말하면,

GPU 안의 기본 계산기

입니다.

예를 들어 다음과 같은 연산을 수행합니다.

5 + 3

12 × 7

A - B

A / B

또는 벡터 연산, 부동소수점 연산 등 일반적인 계산을 담당합니다.

2. CUDA Core는 무엇을 잘할까?

CUDA Core는 다양한 계산을 수행할 수 있습니다.

예를 들어

이미지 처리
물리 시뮬레이션
과학 계산
영상 렌더링
일반 CUDA 프로그램

등에 사용됩니다.

즉,

범용성이 가장 큰 연산 장치입니다.

3. 그런데 AI는 계산 방식이 다르다

딥러닝에서는

이런 계산보다

행렬 A

×

행렬 B

=

행렬 C

가 압도적으로 많이 발생합니다.

예를 들어

4096 × 4096 행렬을

수천~수만 번 곱합니다.

CUDA Core도 가능하지만

효율이 높지는 않습니다.

4. Tensor Core란?

Tensor Core는

행렬 곱셈(Matrix Multiply)을 위해 특별히 설계된 전용 연산 장치

입니다.

쉽게 말하면

CUDA Core는

만능 계산기,

Tensor Core는

행렬 곱셈 전용 슈퍼 계산기입니다.

5. CUDA Core vs Tensor Core
CUDA Core	Tensor Core
범용 연산	AI 전용 연산
FP32 중심	FP16/BF16/FP8 등에 최적화
모든 계산 가능	행렬 곱셈에 특화
그래픽, HPC, CUDA	AI 학습·추론
6. Tensor Core는 무엇을 계산할까?

딥러닝에서 가장 많이 수행되는 연산은

Matrix Multiply Accumulate

C = A × B + C

입니다.

이를 줄여서

MMA(Matrix Multiply-Accumulate)

또는

GEMM(General Matrix Multiply)

이라고도 합니다.

Transformer 내부에서는

이 연산이 반복적으로 수행됩니다.

7. 왜 Tensor Core가 빠를까?

CUDA Core가

하나씩 계산

한다면,

Tensor Core는

작은 행렬 블록

↓

한 번에 계산

하도록 설계되었습니다.

예를 들어

4 × 4

행렬

또는

더 큰 타일(Tile) 단위의 행렬을

전용 하드웨어에서 매우 효율적으로 처리합니다.

Tile은 큰 행렬을 작은 블록으로 나누어 계산하는 방식입니다.

8. AI 모델은 대부분 행렬 연산이다

Transformer 내부에서는

Embedding

↓

Linear Layer

↓

Attention

↓

Feed Forward

↓

Linear Layer

이 거의 모두

행렬 곱셈입니다.

즉,

LLM 대부분의 시간은

Tensor Core에서 계산됩니다.

9. FP32, FP16, BF16, FP8

여기서 중요한 개념이 나옵니다.

이들은

숫자를 표현하는 방식(정밀도, Precision) 입니다.

형식	비트 수	특징
FP32	32bit	높은 정확도, 메모리 사용량 큼
FP16	16bit	메모리 절약, AI에서 널리 사용
BF16	16bit	FP32와 비슷한 표현 범위, 학습에 많이 사용
FP8	8bit	최신 GPU에서 추론·학습 가속
10. 왜 낮은 비트를 사용할까?

예를 들어

FP32라면

32bit

필요합니다.

FP16은

16bit

만 필요합니다.

즉,

메모리 절반
메모리 대역폭 절약
더 많은 데이터를 한 번에 처리

가 가능합니다.

11. BF16이 인기인 이유

FP16은 메모리를 절약하지만

아주 큰 값이나 아주 작은 값을 표현하는 데 제한이 있을 수 있습니다.

BF16(BFloat16)은

FP32와 비슷한 표현 범위(Range)를 유지하면서

메모리는 16bit만 사용합니다.

그래서

대규모 AI 학습에서

가장 많이 사용되는 형식 중 하나입니다.

12. FP8은 왜 주목받을까?

H100 이후의 GPU에서는

FP8을 적극 지원합니다.

FP8의 장점은

메모리 절약
Tensor Core 성능 향상
더 높은 처리량

입니다.

다만,

모든 모델이 FP8을 그대로 사용할 수 있는 것은 아닙니다.

적절한 양자화(Quantization)나 학습 기법이 필요합니다.

13. 실제 GPU 성능은 Tensor Core가 좌우한다

예를 들어

H100을 소개할 때 NVIDIA는

보통

CUDA Core 개수

보다

Tensor Core 성능(TFLOPS)

을 더 강조합니다.

왜냐하면

LLM 학습과 추론에서는

Tensor Core가 핵심이기 때문입니다.

14. AI 인프라 엔지니어 관점

실무에서는

다음과 같은 질문을 자주 받습니다.

이 모델은 FP16으로 실행 가능한가?
BF16을 지원하는 GPU인가?
FP8 최적화를 사용할 수 있는가?
TensorRT-LLM을 적용하면 Tensor Core를 얼마나 더 활용할 수 있는가?

GPU 운영자는

단순히 GPU 개수만 보는 것이 아니라

Tensor Core 활용률도 중요하게 봅니다.

실무 연결

예를 들어 Llama 3를 추론한다고 가정해 보겠습니다.

최적화 전

LLM

↓

FP32

↓

CUDA Core 중심

최적화 후

TensorRT-LLM

↓

FP16 / BF16 / FP8

↓

Tensor Core 적극 활용

결과적으로

처리량(Throughput) 증가
응답 시간(Latency) 감소
GPU 메모리 사용량 감소

를 기대할 수 있습니다.

CUDA Core와 Tensor Core 비교
항목	CUDA Core	Tensor Core
역할	범용 연산	AI 행렬 연산
최적화 대상	그래픽, HPC, 일반 CUDA	딥러닝 학습·추론
대표 연산	덧셈, 곱셈, 벡터 연산	Matrix Multiply-Accumulate
사용 정밀도	FP32 중심	FP16, BF16, FP8 등
AI 중요도	높음	매우 높음
핵심 정리
CUDA Core는 GPU의 범용 연산 장치입니다.
Tensor Core는 행렬 곱셈을 위한 AI 전용 연산 장치입니다.
Transformer 대부분의 계산은 Tensor Core에서 수행됩니다.
FP16, BF16, FP8은 AI 성능과 메모리 효율을 높이는 핵심 기술입니다.
최신 AI GPU(H100, B200, GB200)는 Tensor Core 성능이 매우 중요합니다.
NCA-AIIO 시험 포인트
개념	핵심 포인트
CUDA Core	범용 연산 장치
Tensor Core	AI 행렬 연산 전용
GEMM	대표적인 행렬 곱셈 연산
FP16	메모리 절약, AI에서 널리 사용
BF16	FP32 수준의 표현 범위, 학습에 적합
FP8	최신 AI GPU에서 성능 향상
이해도 확인 문제
문제 1

Tensor Core의 주요 목적은 무엇입니까?

A. 운영체제를 실행한다.

B. 네트워크 패킷을 처리한다.

C. 행렬 곱셈을 매우 빠르게 수행한다.

D. SSD를 제어한다.

<details> <summary><strong>정답 및 해설</strong></summary>

정답: C

Tensor Core는 딥러닝에서 반복되는 행렬 곱셈을 효율적으로 수행하도록 설계된 전용 연산 장치입니다.

</details>
문제 2

다음 중 AI 학습에서 많이 사용하는 정밀도 형식은 무엇입니까?

A. FP16

B. BF16

C. FP32

D. A와 B 모두

<details> <summary><strong>정답 및 해설</strong></summary>

정답: D

현재 AI 학습에서는 FP16과 BF16이 널리 사용되며, 모델과 하드웨어에 따라 선택됩니다.

</details>
💡 AI 인프라 엔지니어를 위한 한 걸음 더

NVIDIA GPU를 이해할 때 중요한 흐름은 다음과 같습니다.

GPU
 │
 ├── SM
 │     ├── CUDA Core  → 범용 연산
 │     ├── Tensor Core → AI 행렬 연산
 │     ├── Register
 │     ├── Shared Memory
 │     └── Warp Scheduler
 │
 └── HBM

AI 성능은 단순히 CUDA Core 개수가 아니라,

Tensor Core 성능
HBM 대역폭
메모리 용량
NVLink 대역폭

등이 함께 결정합니다.

🎓 심화 지식

실무에서는 GPU 성능을 TFLOPS로 비교하는 경우가 많습니다.

하지만 AI에서는 같은 TFLOPS라도 어떤 정밀도(FP32, BF16, FP8)에서 측정한 값인지 반드시 확인해야 합니다.

예를 들어 H100의 FP8 Tensor Core 성능은 FP32 성능보다 훨씬 높습니다. 따라서 제품 자료를 볼 때는 정밀도와 연산 단위(CUDA Core인지 Tensor Core인지)를 함께 확인하는 습관이 중요합니다.


---

NCA-AIIO Master Course
Module 2. GPU Architecture
제13강. GPU Memory(HBM)와 Memory Hierarchy - AI 성능을 결정하는 숨은 핵심

이번 강의는 GPU 성능의 절반을 이해하는 강의입니다.

많은 사람들이 GPU 성능은 Tensor Core가 결정한다고 생각합니다.

하지만 실제 AI 시스템에서는 메모리를 얼마나 빨리 공급할 수 있는가가 성능을 좌우하는 경우가 매우 많습니다.

학습 목표

이번 강의를 마치면 다음 질문에 답할 수 있어야 합니다.

HBM이란 무엇인가?
왜 AI GPU는 GDDR이 아닌 HBM을 사용할까?
GPU 내부 메모리 계층은 어떻게 구성되는가?
Memory Bandwidth는 왜 중요한가?
Memory Bottleneck은 어떻게 발생하는가?
AI 인프라 엔지니어는 GPU 메모리를 어떻게 바라봐야 하는가?
1. GPU는 계산보다 데이터를 기다리는 시간이 많다

놀랍게도 최신 GPU는 계산이 느려서 성능이 떨어지는 경우보다,

계산할 데이터를 기다려서 성능이 떨어지는 경우가 더 많습니다.

예를 들어,

Tensor Core

"계산할 준비 끝!"

        │

        ▼

데이터 아직 안 옴...

Tensor Core는 놀고 있고,

메모리에서 데이터를 가져오는 것을 기다립니다.

이 현상을

Memory Bottleneck

이라고 합니다.

2. GPU Memory Hierarchy

GPU에는 메모리가 하나만 있는 것이 아닙니다.

여러 단계로 구성됩니다.

GPU

├── Register
├── Shared Memory
├── L1 Cache
├── L2 Cache
└── HBM

CPU와 비슷하지만

구성과 목적이 조금 다릅니다.

3. Register

가장 빠른 메모리입니다.

Thread

↓

Register

특징

Thread마다 독립적
가장 빠름
용량 매우 작음

속도

★★★★★

용량

★

4. Shared Memory

같은 Block의 Thread가

함께 사용하는 메모리입니다.

Block

↓

Shared Memory

↓

Thread 1

Thread 2

Thread 3

특징

Register보다 조금 느림
HBM보다 훨씬 빠름
프로그래머가 직접 활용 가능(CUDA)

속도

★★★★☆

5. L1 Cache

SM 내부에 존재하는 캐시입니다.

SM

↓

L1 Cache

최근 사용한 데이터를 저장합니다.

자동으로 관리됩니다.

6. L2 Cache

GPU 전체가 공유합니다.

GPU

↓

L2 Cache

↓

모든 SM 공유

예를 들어

SM1

SM2

SM3

모두

같은 L2 Cache를 사용할 수 있습니다.

7. HBM이란?

드디어

HBM입니다.

HBM은

High Bandwidth Memory

입니다.

쉽게 말하면

AI를 위해 특별히 만든 초고속 메모리입니다.

8. 왜 GDDR이 아니라 HBM일까?

일반 그래픽카드는

보통

GDDR6

GDDR7

을 사용합니다.

AI GPU는

HBM을 사용합니다.

이유는

대역폭(Bandwidth) 때문입니다.

예를 들어

(세대와 제품에 따라 달라질 수 있지만)

메모리	대역폭
GDDR6	수백 GB/s 수준
HBM2e	약 1~2 TB/s 수준
HBM3	약 3 TB/s 이상
HBM3e	제품에 따라 4 TB/s 이상

즉,

HBM은

엄청난 속도로

Tensor Core에게

데이터를 공급합니다.

시험 포인트: HBM의 가장 큰 장점은 **낮은 지연시간(Latency)**이 아니라 **매우 높은 메모리 대역폭(Bandwidth)**입니다.

9. HBM은 어디에 있을까?

HBM은

GPU 옆에 붙어 있습니다.

CPU

↓

PCIe

↓

GPU Chip

▣▣▣ HBM Stack

정확히는

GPU 패키지 안에서

매우 가까운 위치에

적층(Stack)되어 있습니다.

그래서

속도가 매우 빠릅니다.

10. Memory Bandwidth란?

대역폭은

1초 동안 전달 가능한 데이터 양

입니다.

예를 들어

도로를 생각해 봅시다.

1차선

↓

차 적게 이동
8차선

↓

엄청 많은 차량 이동

HBM은

고속도로입니다.

Tensor Core는

자동차 공장입니다.

도로가 좁으면

공장은 놀게 됩니다.

11. Memory Bottleneck

예를 들어

Tensor Core는

100GB/s

계산 가능

인데,

HBM이

20GB/s

공급

이라면?

Tensor Core는

80%

대기합니다.

그래서

GPU Utilization이

낮게 나옵니다.

12. AI 모델은 메모리를 많이 사용한다

LLM에서는

메모리가

엄청나게 사용됩니다.

예를 들어

70B 모델

↓

수십 GB 이상

Parameters

KV Cache

Activation

Embedding

모두

HBM에 저장됩니다.

13. KV Cache

LLM에서

매우 중요한 개념입니다.

대화를 할 때

매번

처음부터 계산하지 않습니다.

이전 계산 결과를

저장합니다.

질문1

↓

KV Cache 저장

↓

질문2

↓

Cache 재사용

이것이

KV Cache입니다.

참고: KV Cache는 Transformer의 Attention 계산에서 이전 토큰의 Key와 Value를 저장해 재사용하는 기술입니다. 덕분에 긴 대화에서 같은 계산을 반복하지 않아 추론 속도가 크게 향상됩니다.

14. Memory Hierarchy 정리
가장 빠름

Register

↓

Shared Memory

↓

L1 Cache

↓

L2 Cache

↓

HBM

↓

SSD

가장 느림

속도가 빠를수록

용량은 작습니다.

15. AI 인프라 엔지니어 관점

GPU 메모리는

단순히

"80GB"

만 보면 안 됩니다.

함께 봐야 할 것은

HBM 용량
Memory Bandwidth
L2 Cache 크기
Memory Utilization
ECC 사용 여부
GPU 간 메모리 공유(NVLink)

입니다.

실무 연결

예를 들어 H100 80GB GPU 두 대를 비교해 보겠습니다.

GPU A

Tensor Core 성능: 매우 높음
HBM 대역폭: 충분

GPU B

Tensor Core 성능: 매우 높음
메모리 대역폭: 부족

같은 연산 성능을 가지고 있어도,

GPU B는 데이터를 충분히 공급하지 못해 Tensor Core가 대기하는 시간이 늘어날 수 있습니다.

그래서 AI 성능을 평가할 때는

"연산 성능"과 "메모리 대역폭"을 함께 봐야 합니다.

AI 모델은 메모리를 어떻게 사용할까?
LLM 실행

│

├── Model Parameters
├── KV Cache
├── Activation
├── Temporary Buffer
└── CUDA Workspace

이 모든 것이

HBM을 사용합니다.

그래서

GPU 메모리가 부족하면

모델 자체가 실행되지 않을 수도 있습니다.

핵심 정리
GPU에는 Register, Shared Memory, L1/L2 Cache, HBM으로 구성된 메모리 계층이 있습니다.
HBM은 AI를 위한 초고속 메모리입니다.
HBM의 가장 큰 장점은 매우 높은 메모리 대역폭입니다.
Tensor Core가 아무리 빨라도 데이터를 공급받지 못하면 성능이 떨어집니다.
AI 모델은 Parameters, Activation, KV Cache 등으로 많은 HBM을 사용합니다.
NCA-AIIO 시험 포인트
개념	핵심 포인트
Register	가장 빠른 메모리, Thread 전용
Shared Memory	Block 내 Thread 공유
L1 Cache	SM 내부 캐시
L2 Cache	GPU 전체 공유 캐시
HBM	고대역폭 메모리
Memory Bandwidth	초당 데이터 전송량
KV Cache	Transformer의 이전 계산 결과 재사용
이해도 확인 문제
문제 1

HBM의 가장 큰 장점은 무엇입니까?

A. CPU보다 용량이 크다.

B. 메모리 대역폭이 매우 높다.

C. 운영체제를 실행한다.

D. SSD를 대체한다.

<details> <summary><strong>정답 및 해설</strong></summary>

정답: B

HBM은 AI 연산에 필요한 데이터를 매우 빠르게 공급할 수 있는 높은 메모리 대역폭이 가장 큰 장점입니다.

</details>
문제 2

다음 중 GPU 메모리 계층에서 가장 빠른 것은 무엇입니까?

A. HBM

B. L2 Cache

C. Shared Memory

D. Register

<details> <summary><strong>정답 및 해설</strong></summary>

정답: D

Register는 Thread마다 할당되는 GPU 내부의 가장 빠른 메모리입니다.

</details>
💡 AI 인프라 엔지니어를 위한 한 걸음 더

실제 GPU 운영에서는 다음 세 가지 지표를 함께 보는 습관이 중요합니다.

지표	의미	해석 예시
GPU Utilization	GPU 전체 사용률	낮으면 작업이 충분하지 않거나 병목 가능
SM Utilization	계산 유닛 사용률	낮으면 연산기가 대기 중일 수 있음
Memory Utilization / Bandwidth	메모리 사용 및 전송	높고 SM 사용률이 낮으면 메모리 병목 가능

이 세 지표를 함께 보면 연산 병목인지, 메모리 병목인지를 훨씬 정확하게 판단할 수 있습니다.

🎓 심화 지식

최근 AI GPU에서는 HBM 용량도 점점 중요해지고 있습니다.

예를 들어 대규모 LLM을 실행할 때는 단순히 연산 성능보다 모델 전체가 HBM에 올라갈 수 있는지가 먼저 결정됩니다.

그래서 AI GPU를 비교할 때는 다음 네 가지를 함께 보는 것이 좋습니다.

Tensor Core 성능
HBM 용량
HBM 대역폭
GPU 간 연결 속도(NVLink)

---

NCA-AIIO Master Course
Module 2. GPU Architecture
제14강. PCIe, NVLink, NVSwitch - GPU는 어떻게 서로 통신하는가?

이번 강의는 멀티 GPU 시스템을 이해하는 핵심입니다.

GPU가 아무리 빠르더라도 GPU끼리 데이터를 빨리 주고받지 못하면 AI 학습 성능은 크게 떨어집니다.

그래서 NVIDIA는 NVLink와 NVSwitch를 개발했습니다.

학습 목표

이번 강의를 마치면 다음 질문에 답할 수 있어야 합니다.

PCIe란 무엇인가?
GPU는 왜 PCIe만으로 부족한가?
NVLink는 무엇인가?
NVSwitch는 무엇인가?
DGX 서버는 일반 GPU 서버와 무엇이 다른가?
AI 인프라 엔지니어는 GPU 간 통신을 어떻게 설계해야 하는가?
1. GPU는 혼자만 일하지 않는다

예를 들어

Llama 70B 모델을 학습한다고 가정해 보겠습니다.

GPU 하나의 메모리로는 부족합니다.

그래서

GPU1

GPU2

GPU3

GPU4

가 함께 계산합니다.

문제는

GPU끼리 계속 데이터를 주고받아야 한다는 것입니다.

2. GPU는 왜 데이터를 주고받을까?

예를 들어

행렬을 나누어 계산합니다.

행렬 A

↓

GPU1

GPU2

GPU3

GPU4

각 GPU가

일부만 계산합니다.

하지만

최종 결과를 만들려면

다시 합쳐야 합니다.

이를 위해

GPU 간 통신이 필요합니다.

3. PCIe란?

PCIe

Peripheral Component Interconnect Express

입니다.

컴퓨터 내부에서

CPU와 GPU,

SSD,

NIC 등을 연결하는

대표적인 인터페이스입니다.

CPU

│

PCIe

│

GPU

오늘날 거의 모든 GPU 서버는 PCIe를 사용합니다.

4. PCIe의 역할

PCIe는

다음과 같은 통신을 담당합니다.

CPU

↓

GPU

↓

SSD

즉

범용 연결입니다.

GPU만 위한 기술은 아닙니다.

5. 그런데 AI에서는 문제가 생긴다

예를 들어

GPU 8개가 있다고 합시다.

GPU1

GPU2

GPU3

GPU4

GPU5

GPU6

GPU7

GPU8

매초

수백 GB의 데이터를

주고받습니다.

PCIe만 사용하면

속도가 부족해집니다.

6. 그래서 NVLink가 등장했다

NVLink는

GPU와 GPU를 직접 연결하는 NVIDIA의 고속 인터커넥트 기술입니다.

구조는

GPU

⇄

NVLink

⇄

GPU

CPU를 거치지 않고

GPU끼리 직접 통신할 수 있습니다.

7. PCIe vs NVLink
PCIe	NVLink
범용 인터페이스	GPU 전용 인터커넥트
CPU↔GPU 연결	GPU↔GPU 직접 연결
모든 장치 연결 가능	NVIDIA GPU 중심
상대적으로 낮은 대역폭	매우 높은 대역폭

시험 포인트: NVLink는 PCIe를 완전히 대체하는 것이 아니라 보완합니다. 대부분의 AI 서버에서는 CPU↔GPU는 PCIe(또는 CPU의 전용 인터커넥트)를 사용하고, GPU↔GPU는 NVLink를 추가로 사용합니다.

8. NVLink가 왜 빠를까?

PCIe에서는

GPU1

↓

CPU

↓

GPU2

처럼

CPU를 경유하는 경우가 많습니다.

반면

NVLink는

GPU1

⇄

GPU2

직접 연결됩니다.

그래서

지연시간이 줄고

대역폭이 커집니다.

9. AllReduce란?

멀티 GPU 학습에서는

가장 많이 등장하는 통신입니다.

예를 들어

GPU마다

Gradient를 계산합니다.

GPU1

Gradient A
GPU2

Gradient B
GPU3

Gradient C

이를

모두 합쳐야 합니다.

A+B+C

↓

모든 GPU 공유

이 과정이

AllReduce입니다.

10. NVLink가 없으면?

Gradient를

PCIe만으로 전달합니다.

GPU

↓

PCIe

↓

CPU

↓

PCIe

↓

GPU

통신량이 많아질수록

학습 속도가 떨어집니다.

11. NVSwitch란?

GPU가

2개라면

NVLink만으로 충분합니다.

하지만

GPU가

8개,

16개,

32개라면?

모두 직접 연결하기 어렵습니다.

그래서

NVSwitch가 등장합니다.

12. NVSwitch 구조
GPU1

GPU2

GPU3

GPU4

     │

 NVSwitch

     │

GPU5

GPU6

GPU7

GPU8

NVSwitch는

GPU 네트워크의

고속 스위치입니다.

13. 네트워크로 비유하면

PCIe

↓

일반 도로

NVLink

↓

고속도로

NVSwitch

↓

고속도로 분기 허브

즉

GPU끼리

막힘 없이

데이터를 전달합니다.

14. DGX 서버는 무엇이 다를까?

DGX H100을 예로 들어보겠습니다.

일반 서버

CPU

↓

PCIe

↓

GPU

DGX

GPU

↓

NVSwitch

↓

GPU

모든 GPU가

고속으로

서로 연결됩니다.

그래서

8개의 GPU가

하나의 거대한 GPU처럼

협력할 수 있습니다.

정확한 표현: 운영체제에서는 여전히 8개의 독립적인 GPU로 인식합니다. 하지만 NVSwitch 덕분에 GPU 간 통신이 매우 빨라져 하나의 큰 시스템처럼 협력하여 작업할 수 있습니다.

15. NVLink와 메모리

NVLink는

단순히 데이터만 전달하지 않습니다.

GPU 간 메모리 접근도

매우 빠르게 만듭니다.

예를 들어

GPU1

HBM

↓

NVLink

↓

GPU2

GPU2가

GPU1의 데이터를

더 효율적으로 사용할 수 있습니다.

참고: 이는 하드웨어와 소프트웨어(CUDA, NCCL 등)의 지원을 통해 이루어지며, 모든 메모리가 자동으로 하나의 메모리처럼 합쳐지는 것은 아닙니다.

16. AI 인프라 엔지니어 관점

GPU를 선택할 때

GPU 개수만 보면 안 됩니다.

반드시 확인해야 하는 것

NVLink 지원 여부
NVLink 세대
NVSwitch 유무
PCIe Gen5 지원
GPU 간 토폴로지(Topology)

GPU 8개가 있다고

모두 같은 성능은 아닙니다.

실무 연결

실제 Kubernetes AI Cluster에서는

다음과 같은 구성을 볼 수 있습니다.

GPU Node

GPU0

GPU1

GPU2

GPU3

여기서

nvidia-smi topo -m

을 실행하면

GPU 간 연결 구조를 확인할 수 있습니다.

예를 들어

GPU0 ↔ GPU1 : NVLink

GPU0 ↔ GPU3 : PCIe

처럼

GPU마다

통신 속도가 다를 수 있습니다.

이 정보는

NCCL이 최적의 통신 경로를 선택하는 데 활용됩니다.

AI 학습에서 통신은 얼마나 중요할까?

대규모 모델을 학습하면

Forward

↓

Backward

↓

Gradient

↓

AllReduce

↓

Parameter Update

이 과정을

수천~수백만 번 반복합니다.

GPU 계산이 아무리 빨라도

AllReduce가 느리면 전체 학습 속도가 느려집니다.

그래서 최신 AI 서버는

Tensor Core뿐 아니라

GPU 간 통신 성능도 매우 중요합니다.

핵심 정리
PCIe는 CPU와 GPU 등을 연결하는 범용 인터페이스입니다.
NVLink는 GPU 간 고속 통신을 위한 NVIDIA 기술입니다.
NVSwitch는 다수의 GPU를 고속으로 연결하는 스위치입니다.
대규모 AI 학습에서는 GPU 계산뿐 아니라 GPU 간 통신도 성능의 핵심입니다.
NCCL은 NVLink, PCIe 등의 토폴로지를 활용하여 GPU 간 통신을 최적화합니다.
NCA-AIIO 시험 포인트
개념	핵심 포인트
PCIe	CPU↔GPU 연결
NVLink	GPU↔GPU 고속 연결
NVSwitch	다수 GPU를 연결하는 스위치
AllReduce	Gradient를 모든 GPU에서 공유하는 통신
Topology	GPU 간 연결 구조
NCCL	GPU 간 집단 통신 라이브러리
이해도 확인 문제
문제 1

NVLink의 주요 목적은 무엇입니까?

A. 운영체제를 실행한다.

B. CPU 캐시를 확장한다.

C. GPU 간 고속 통신을 제공한다.

D. SSD를 연결한다.

<details> <summary><strong>정답 및 해설</strong></summary>

정답: C

NVLink는 NVIDIA GPU 간의 고속 데이터 교환을 위한 인터커넥트입니다.

</details>
문제 2

NVSwitch가 필요한 가장 큰 이유는 무엇입니까?

A. CPU 성능을 높이기 위해

B. 다수의 GPU를 효율적으로 연결하기 위해

C. HBM 용량을 늘리기 위해

D. SSD 속도를 높이기 위해

<details> <summary><strong>정답 및 해설</strong></summary>

정답: B

NVSwitch는 여러 GPU 간의 고속 통신을 지원하여 대규모 AI 학습의 효율을 높입니다.

</details>
💡 AI 인프라 엔지니어를 위한 한 걸음 더

지금까지 GPU 내부와 GPU 간 연결까지 이해했습니다.

전체 그림은 다음과 같습니다.

GPU
 │
 ├── SM
 │     ├── CUDA Core
 │     ├── Tensor Core
 │     ├── Shared Memory
 │     └── Register
 │
 └── HBM
      │
      ▼
  NVLink
      │
      ▼
 NVSwitch
      │
      ▼
다른 GPU

이제 하나의 GPU가 아니라 수십~수천 개의 GPU를 하나의 거대한 AI 슈퍼컴퓨터처럼 동작시키는 기반 기술을 이해한 것입니다.

🎓 심화 지식

실무에서는 NCCL이 NVLink와 NVSwitch를 자동으로 활용하여 AllReduce와 같은 집단 통신을 최적화합니다.

예를 들어 8개의 GPU가 있는 서버에서는 NCCL이 GPU 토폴로지를 분석하여 가장 빠른 통신 경로를 선택합니다. AI 인프라 엔지니어는 성능이 기대보다 낮을 때 nvidia-smi topo -m, NCCL 테스트 도구, GPU 토폴로지를 함께 확인하는 경우가 많습니다.


---

NCA-AIIO Master Course
Module 2. GPU Architecture
제15강. CUDA Programming Model과 CUDA Runtime - CPU는 GPU에게 어떻게 일을 시킬까?

이번 강의는 GPU 하드웨어와 소프트웨어를 연결하는 핵심입니다.

지금까지는 GPU가 어떻게 생겼는지를 배웠습니다.

이제는 CPU가 GPU에게 어떻게 일을 시키는지를 배워봅시다.

학습 목표

이번 강의를 마치면 다음 질문에 답할 수 있어야 합니다.

CUDA란 무엇인가?
CUDA Driver와 CUDA Runtime의 차이는 무엇인가?
Host와 Device는 무엇인가?
Kernel이란 무엇인가?
CUDA 프로그램은 어떻게 GPU를 실행시키는가?
AI 인프라 엔지니어는 CUDA를 어느 수준까지 이해해야 하는가?
지금까지의 복습

우리는 GPU 내부를 이해했습니다.

GPU
│
├── SM
│    ├── CUDA Core
│    ├── Tensor Core
│    └── Shared Memory
│
└── HBM

그런데 이런 질문이 생깁니다.

CPU는 GPU에게 어떻게 "행렬 곱셈을 시작해!"라고 말할까요?

그 역할을 하는 것이 바로 CUDA입니다.

1. CUDA란?

CUDA는

Compute Unified Device Architecture

의 약자입니다.

쉽게 말하면

CPU가 NVIDIA GPU를 사용할 수 있도록 해주는 플랫폼이자 프로그래밍 모델

입니다.

CUDA가 없다면

CPU는 GPU에게

"이 계산을 수행해."

라고 요청할 수 없습니다.

2. CUDA는 운영체제가 아니다

많은 사람들이

CUDA를 운영체제처럼 생각합니다.

아닙니다.

CUDA는

응용 프로그램

↓

CUDA API

↓

CUDA Driver

↓

GPU

를 연결하는 계층입니다.

3. Host와 Device

CUDA에서는

매우 중요한 용어가 있습니다.

Host

Host는

CPU입니다.

Host

=

CPU
Device

Device는

GPU입니다.

Device

=

GPU

그래서 CUDA 문서를 보면

Host Memory

Device Memory

라는 표현이 자주 등장합니다.

4. CPU와 GPU의 역할

CPU는

관리자입니다.

GPU는

작업자입니다.

CPU

↓

데이터 준비

↓

GPU 실행 요청

↓

GPU 계산

↓

결과 수집

CPU는

직접 AI 계산을 거의 하지 않습니다.

GPU에게 일을 시킵니다.

5. CUDA 프로그램의 흐름

CUDA 프로그램은

거의 항상

다음 순서입니다.

CPU 시작

↓

GPU 메모리 확보

↓

데이터 복사

↓

Kernel 실행

↓

결과 복사

↓

종료

이 순서를 이해하는 것이 매우 중요합니다.

6. Kernel이란?

Kernel은

GPU에서 실행되는 함수

입니다.

CPU 함수와 다르게

GPU에서 실행됩니다.

예를 들어

CPU

↓

Kernel 실행

↓

GPU 계산

Kernel 안에는

수천 개의 Thread가

동시에 실행됩니다.

7. Kernel 실행 구조

예를 들어

Vector Add

를 수행한다고 합시다.

CPU는

Kernel을

한 번 실행합니다.

GPU에서는

Kernel

↓

Thread 1

Thread 2

Thread 3

...

Thread 1000000

이렇게

수백만 Thread가

동시에 계산합니다.

8. Memory Copy

GPU는

CPU 메모리를

직접 계산하지 않습니다.

예를 들어

RAM

↓

GPU HBM

으로

먼저 데이터를 복사합니다.

그 후

GPU가 계산합니다.

마지막으로

GPU

↓

CPU RAM

으로

결과를 가져옵니다.

9. 왜 복사가 필요할까?

CPU RAM과

GPU HBM은

서로 다른 메모리 공간입니다.

CPU

↓

DDR Memory
GPU

↓

HBM

그래서

계산 전에

복사가 필요합니다.

참고: 최신 CUDA에서는 Unified Memory와 GPUDirect 같은 기술로 이 과정을 단순화하거나 최적화할 수 있지만, 기본 개념은 Host와 Device 메모리가 구분된다는 것입니다.

10. CUDA Runtime

CUDA Runtime은

개발자가 쉽게 CUDA를 사용할 수 있도록 만든 라이브러리입니다.

예를 들어

다음과 같은 기능을 제공합니다.

GPU 메모리 할당
데이터 복사
Kernel 실행
GPU 정보 조회

즉,

프로그래머는

복잡한 Driver를

직접 다루지 않아도 됩니다.

11. CUDA Driver

CUDA Driver는

GPU와

직접 통신합니다.

구조는

Application

↓

CUDA Runtime

↓

CUDA Driver

↓

GPU

입니다.

Driver가

실제 GPU 명령을

전달합니다.

12. Runtime과 Driver 차이
CUDA Runtime	CUDA Driver
개발자가 주로 사용	GPU와 직접 통신
API 제공	하드웨어 제어
사용하기 쉬움	저수준(Low-Level) 인터페이스

실무에서는

대부분

CUDA Runtime을 사용합니다.

13. AI Framework도 CUDA를 사용한다

우리는

PyTorch에서

tensor.cuda()

를 많이 봅니다.

실제로는

PyTorch

↓

CUDA Runtime

↓

CUDA Driver

↓

GPU

입니다.

TensorFlow도

동일한 구조입니다.

즉,

AI Framework는

결국 CUDA 위에서 동작합니다.

14. AI 추론 과정

예를 들어

LLM 추론은

다음과 같이 동작합니다.

사용자 질문

↓

Tokenizer

↓

PyTorch

↓

CUDA Runtime

↓

CUDA Driver

↓

Tensor Core

↓

HBM

↓

결과

이 모든 과정이

수 ms~수백 ms 안에

일어납니다.

15. AI 인프라 엔지니어 관점

AI 인프라 엔지니어는

CUDA 코드를 작성하지 않아도 됩니다.

하지만

다음은 이해해야 합니다.

CUDA Driver 설치
CUDA Toolkit 버전
Driver 호환성
CUDA Runtime 버전
PyTorch CUDA 버전
Container 내부 CUDA 라이브러리

예를 들어

다음과 같은 오류는 매우 흔합니다.

CUDA Version Mismatch

Driver Version Incompatible

CUDA Initialization Failed

이런 문제를 해결하려면

CUDA 구조를 이해해야 합니다.

실무 연결

Kubernetes에서 GPU Pod를 실행한다고 가정해 보겠습니다.

resources:
  limits:
    nvidia.com/gpu: 1

Pod가 시작되면

다음과 같은 흐름이 이루어집니다.

Container

↓

CUDA Runtime

↓

NVIDIA Container Toolkit

↓

Host CUDA Driver

↓

GPU

중요한 점은

Container 안에는 CUDA Runtime이 있을 수 있지만, 실제 GPU를 제어하는 Driver는 Host OS에 설치되어 있다는 것입니다.

그래서 Driver 버전과 Container의 CUDA 버전 호환성이 매우 중요합니다.

CUDA 소프트웨어 스택
Application
      │
      ▼
PyTorch / TensorFlow
      │
      ▼
CUDA Runtime
      │
      ▼
CUDA Driver
      │
      ▼
GPU Firmware
      │
      ▼
GPU Hardware
핵심 정리
CUDA는 CPU가 NVIDIA GPU를 사용할 수 있게 하는 플랫폼입니다.
Host는 CPU, Device는 GPU를 의미합니다.
Kernel은 GPU에서 실행되는 함수입니다.
CUDA Runtime은 개발자가 사용하는 API입니다.
CUDA Driver는 GPU와 직접 통신합니다.
PyTorch와 TensorFlow도 결국 CUDA를 사용합니다.
NCA-AIIO 시험 포인트
개념	핵심 포인트
CUDA	NVIDIA GPU 컴퓨팅 플랫폼
Host	CPU
Device	GPU
Kernel	GPU에서 실행되는 함수
CUDA Runtime	고수준 API
CUDA Driver	GPU 제어 계층
Memory Copy	Host ↔ Device 데이터 전송
이해도 확인 문제
문제 1

CUDA Kernel의 가장 적절한 설명은 무엇입니까?

A. CPU에서 실행되는 함수

B. GPU에서 실행되는 함수

C. GPU 메모리

D. 운영체제 드라이버

<details> <summary><strong>정답 및 해설</strong></summary>

정답: B

CUDA Kernel은 GPU에서 실행되며, 많은 Thread가 동시에 수행하는 함수입니다.

</details>
문제 2

CUDA Driver의 역할은 무엇입니까?

A. AI 모델을 학습한다.

B. GPU와 직접 통신한다.

C. 운영체제를 설치한다.

D. HBM을 관리한다.

<details> <summary><strong>정답 및 해설</strong></summary>

정답: B

CUDA Driver는 GPU 하드웨어와 직접 통신하여 명령을 전달하는 계층입니다.

</details>
💡 AI 인프라 엔지니어를 위한 한 걸음 더

실무에서 가장 많이 발생하는 GPU 장애 중 일부는 CUDA 버전 불일치와 관련되어 있습니다.

예를 들어,

Host Driver는 최신인데 Container의 CUDA Runtime이 너무 오래된 경우
Container는 CUDA 12.x 기반인데 Host Driver가 이를 지원하지 않는 경우

이런 상황에서는 GPU는 정상적으로 장착되어 있어도 애플리케이션이 GPU를 사용하지 못할 수 있습니다.

GPU 서버를 운영할 때는 다음 네 가지 버전을 함께 확인하는 습관이 중요합니다.

NVIDIA Driver 버전
CUDA Toolkit 버전
CUDA Runtime 버전
PyTorch/TensorFlow가 빌드된 CUDA 버전
🎓 심화 지식

NVIDIA는 Forward Compatibility와 Minor Version Compatibility를 통해 일부 CUDA 버전 간 호환성을 제공합니다.

하지만 "최신 CUDA Runtime이면 어떤 Driver에서도 무조건 동작한다"는 의미는 아닙니다. 항상 NVIDIA의 호환성 매트릭스를 확인하는 것이 안전합니다.

---

NCA-AIIO Master Course
Module 2. GPU Architecture
제16강. CUDA Ecosystem과 AI Software Stack - AI는 어떤 소프트웨어 위에서 실행되는가?

이번 강의는 AI 인프라 엔지니어에게 가장 실무적인 강의 중 하나입니다.

지금까지는 GPU와 CUDA를 배웠습니다.

이번에는 PyTorch가 어떻게 Tensor Core를 사용하는지, 그리고 NVIDIA AI 소프트웨어 생태계(CUDA Ecosystem) 전체를 이해해 보겠습니다.

학습 목표

이번 강의를 마치면 다음 질문에 답할 수 있어야 합니다.

CUDA Toolkit은 무엇으로 구성되는가?
cuBLAS, cuDNN, NCCL은 각각 어떤 역할을 하는가?
TensorRT는 어디에 위치하는가?
PyTorch는 CUDA 라이브러리를 어떻게 사용하는가?
AI 소프트웨어 스택 전체 구조는 어떻게 되는가?
지금까지의 복습

우리는 다음과 같은 구조를 배웠습니다.

Application

↓

CUDA Runtime

↓

CUDA Driver

↓

GPU

하지만 실제 AI는 이보다 훨씬 많은 라이브러리를 사용합니다.

1. CUDA Ecosystem이란?

CUDA는 단순한 Runtime이 아닙니다.

NVIDIA는 CUDA를 중심으로 수많은 AI 라이브러리를 제공합니다.

CUDA Ecosystem

├── CUDA Runtime
├── CUDA Driver
├── cuBLAS
├── cuDNN
├── NCCL
├── TensorRT
├── CUDA Toolkit
└── Nsight

이 전체를

CUDA Ecosystem

이라고 합니다.

2. CUDA Toolkit

CUDA Toolkit은

GPU 개발에 필요한 도구 모음입니다.

대표 구성 요소는 다음과 같습니다.

구성 요소	역할
nvcc	CUDA 컴파일러
CUDA Runtime	GPU 실행 API
cuBLAS	행렬 연산 라이브러리
cuDNN	딥러닝 연산 라이브러리
NCCL	GPU 통신 라이브러리
Nsight	성능 분석 도구
3. cuBLAS란?

AI에서

가장 많이 수행되는 계산은

행렬 곱셈입니다.

예를 들어

A × B = C

이 계산을

가장 빠르게 수행하도록 만든 라이브러리가

cuBLAS

입니다.

BLAS는

Basic Linear Algebra Subprograms

입니다.

4. cuBLAS는 언제 사용될까?

예를 들어

PyTorch에서

torch.matmul(A, B)

를 실행하면

실제로는

PyTorch

↓

cuBLAS

↓

Tensor Core

순으로 실행되는 경우가 많습니다.

즉,

개발자는 cuBLAS를 직접 호출하지 않아도

자동으로 사용됩니다.

5. cuDNN이란?

cuDNN은

CUDA Deep Neural Network

입니다.

딥러닝 연산을 위한

최적화 라이브러리입니다.

대표적으로

Convolution
Pooling
Activation
Normalization

등을 제공합니다.

6. CNN에서는 cuDNN이 핵심

예를 들어

이미지 분류 모델

ResNet

EfficientNet

등은

PyTorch

↓

cuDNN

↓

Tensor Core

를 많이 사용합니다.

CNN 모델에서는

cuDNN이 매우 중요합니다.

참고: 최근 Transformer 중심의 LLM에서는 cuBLAS가 더 많이 사용되는 경우가 많지만, cuDNN도 일부 연산과 최적화에 계속 활용됩니다.

7. NCCL이란?

NCCL

(NVIDIA Collective Communications Library)

입니다.

멀티 GPU 통신을 담당합니다.

예를 들어

GPU1

GPU2

GPU3

GPU4

가 함께 학습하면

Gradient를

계속 교환해야 합니다.

그 역할을 하는 것이

NCCL입니다.

8. NCCL이 수행하는 통신

대표적인 통신입니다.

AllReduce
Broadcast
Reduce
Gather
Scatter
AllGather
ReduceScatter

특히

AllReduce

가 가장 많이 사용됩니다.

9. TensorRT란?

TensorRT는

AI 추론(Inference)을

최적화하는 엔진입니다.

학습에는 거의 사용하지 않고,

배포 후

추론 속도를 높이는 것이 목적입니다.

10. TensorRT는 무엇을 최적화할까?

예를 들어

PyTorch Model

↓

TensorRT Engine

↓

Tensor Core

TensorRT는

Layer Fusion
Kernel Selection
Precision Optimization
Memory Optimization

등을 수행합니다.

그 결과

추론 속도가 크게 향상될 수 있습니다.

11. Precision Optimization

TensorRT는

자동으로

FP32

↓

FP16

↓

FP8 (지원 시)

같이

정밀도를 조정하여

Tensor Core를

더 효율적으로 활용할 수 있습니다.

참고: 자동 변환은 GPU와 모델이 해당 정밀도를 지원해야 하며, 정확도 요구사항을 만족하는 범위에서 적용됩니다.

12. Nsight

Nsight는

NVIDIA의

성능 분석 도구입니다.

예를 들어

확인 가능한 항목은

GPU Utilization
SM Utilization
Memory Bandwidth
Kernel 실행 시간
CUDA API 호출

입니다.

AI 성능 튜닝에서

매우 중요한 도구입니다.

13. CUDA Software Stack

이제

전체 구조를 보겠습니다.

Application

↓

PyTorch

↓

CUDA Library

↓

CUDA Runtime

↓

CUDA Driver

↓

GPU

CUDA Library에는

CUDA Library

├── cuBLAS
├── cuDNN
├── NCCL
├── TensorRT

가 포함됩니다.

14. 실제 LLM 추론 과정

예를 들어

ChatBot이

질문을 받으면

Question

↓

Tokenizer

↓

PyTorch

↓

cuBLAS

↓

TensorRT (최적화 시)

↓

CUDA Runtime

↓

CUDA Driver

↓

Tensor Core

↓

HBM

↓

Answer

이 과정이

매우 빠르게 반복됩니다.

15. AI 인프라 엔지니어 관점

실무에서는

다음 라이브러리의 역할을 구분할 수 있어야 합니다.

라이브러리	역할
cuBLAS	행렬 연산
cuDNN	딥러닝 연산
NCCL	GPU 간 통신
TensorRT	추론 최적화
Nsight	성능 분석

GPU 장애가 발생했을 때

어느 계층의 문제인지

판단할 수 있어야 합니다.

실무 연결

Kubernetes 환경에서 LLM 서비스를 운영한다고 가정해 보겠습니다.

Container

↓

PyTorch

↓

TensorRT-LLM

↓

NCCL

↓

CUDA Runtime

↓

Host Driver

↓

GPU

여러 GPU를 사용하는 경우

TensorRT-LLM은 추론 최적화
NCCL은 GPU 간 통신
CUDA Runtime은 GPU 실행
Driver는 실제 하드웨어 제어

를 담당합니다.

장애 사례

예를 들어

PyTorch는 정상 실행되지만

다음과 같은 오류가 발생할 수 있습니다.

NCCL Timeout

AllReduce Failed

이 경우

GPU 자체보다

다음 원인을 먼저 의심합니다.

NVLink 연결 문제
InfiniBand/RoCE 네트워크 문제(멀티 노드)
NCCL 버전 호환성
방화벽 또는 네트워크 설정

반대로

CUDA Initialization Failed

라면

CUDA Driver 또는 Runtime 문제일 가능성이 큽니다.

AI Software Stack 전체 구조
Application (LLM Service)
        │
        ▼
PyTorch / TensorFlow
        │
        ▼
TensorRT (Inference)
        │
        ▼
cuBLAS / cuDNN / NCCL
        │
        ▼
CUDA Runtime
        │
        ▼
CUDA Driver
        │
        ▼
GPU Hardware
핵심 정리
CUDA Toolkit은 AI 개발을 위한 도구와 라이브러리 모음입니다.
cuBLAS는 행렬 연산을 최적화합니다.
cuDNN은 딥러닝 연산을 최적화합니다.
NCCL은 멀티 GPU 통신을 담당합니다.
TensorRT는 AI 추론 성능을 최적화합니다.
Nsight는 GPU 성능 분석 도구입니다.
NCA-AIIO 시험 포인트
개념	핵심 포인트
CUDA Toolkit	개발 도구와 라이브러리 모음
cuBLAS	행렬 연산
cuDNN	딥러닝 연산
NCCL	집단 통신(AllReduce 등)
TensorRT	추론 최적화
Nsight	GPU 성능 분석
이해도 확인 문제
문제 1

다음 중 GPU 간 AllReduce 통신을 담당하는 라이브러리는 무엇입니까?

A. cuBLAS

B. cuDNN

C. NCCL

D. TensorRT

<details> <summary><strong>정답 및 해설</strong></summary>

정답: C

NCCL은 NVIDIA GPU 간의 집단 통신(AllReduce, Broadcast 등)을 최적화하는 라이브러리입니다.

</details>
문제 2

TensorRT의 주요 목적은 무엇입니까?

A. GPU Driver 설치

B. AI 모델 학습 가속

C. AI 추론 최적화

D. 운영체제 관리

<details> <summary><strong>정답 및 해설</strong></summary>

정답: C

TensorRT는 모델을 최적화하여 추론 속도와 처리량을 높이는 NVIDIA의 추론 엔진입니다.

</details>
💡 AI 인프라 엔지니어를 위한 한 걸음 더

현업에서 자주 듣는 용어들을 이제 다음처럼 연결해서 이해할 수 있어야 합니다.

PyTorch
   │
   ▼
torch.matmul()
   │
   ▼
cuBLAS
   │
   ▼
CUDA Runtime
   │
   ▼
CUDA Driver
   │
   ▼
Tensor Core

또한 멀티 GPU 환경에서는 다음 흐름이 추가됩니다.

GPU0
 │
 ├──── NCCL ──── GPU1
 ├──── NCCL ──── GPU2
 └──── NCCL ──── GPU3

즉, 연산은 cuBLAS와 Tensor Core가 담당하고, 통신은 NCCL이 담당한다는 그림을 머릿속에 그릴 수 있어야 합니다.

🎓 심화 지식

최근 LLM 환경에서는 TensorRT-LLM이 중요한 역할을 합니다.

기존 TensorRT가 일반적인 추론 엔진이라면, TensorRT-LLM은 대규모 언어 모델을 위한 최적화 기능(Paged KV Cache, In-Flight Batching, Speculative Decoding 지원 등)을 추가한 추론 프레임워크입니다. NVIDIA AI Enterprise 환경에서 자주 사용되며, 대규모 LLM 서비스의 처리량과 지연시간을 개선하는 데 중요한 구성 요소입니다.

Module 2 마무리

여기까지 GPU 아키텍처의 핵심을 모두 학습했습니다.

AI 기초부터 LLM까지
GPU 내부 구조(SM, CUDA Core, Tensor Core)
HBM과 메모리 계층
NVLink/NVSwitch
CUDA Runtime과 Driver
CUDA Ecosystem

이제 GPU 한 장이 어떻게 동작하는지뿐 아니라, AI 애플리케이션이 GPU를 실제로 사용하는 전체 소프트웨어 스택까지 연결해서 이해할 수 있는 수준에 도달했습니다.


---

NCA-AIIO Master Course
Module 3. AI Networking
제17강. AI Networking 개요 - 왜 AI는 일반 네트워크와 다른가?

이번 강의부터는 AI 인프라 엔지니어의 핵심 분야인 AI Networking을 시작합니다.

특히 네트워크 인프라 경험이 있는 엔지니어라면, 이 모듈은 기존 지식을 AI 분야로 연결하는 가장 중요한 단계입니다.

AI 서버는 일반 웹 서비스와 전혀 다른 방식으로 네트워크를 사용합니다.

학습 목표

이번 강의를 마치면 다음 질문에 답할 수 있어야 합니다.

AI Networking이란 무엇인가?
일반 데이터센터 네트워크와 무엇이 다른가?
AI는 왜 네트워크 성능에 민감한가?
East-West Traffic이 중요한 이유는 무엇인가?
Scale-Up과 Scale-Out의 차이는 무엇인가?
AI Fabric이란 무엇인가?
1. 일반 서비스와 AI 서비스의 차이

우리가 운영하는 일반적인 웹 서비스는 다음과 같습니다.

사용자

↓

Load Balancer

↓

Web Server

↓

WAS

↓

DB

주요 트래픽은

사용자 → 서버
서버 → DB

입니다.

이를 North-South Traffic이 중심인 구조라고 볼 수 있습니다.

그런데 AI 학습은 다릅니다

예를 들어 GPU 64개가 하나의 모델을 학습합니다.

GPU1

GPU2

GPU3

...

GPU64

GPU들은

계속 서로 통신합니다.

사용자보다

GPU끼리 통신하는 양이 훨씬 많습니다.

2. North-South Traffic

North-South는

외부와 내부를 연결하는 트래픽입니다.

Internet

↓

Firewall

↓

Load Balancer

↓

Application

웹 서비스는

대부분 이것이 중요합니다.

3. East-West Traffic

AI에서는

이것이 핵심입니다.

GPU1

⇄ GPU2

⇄ GPU3

⇄ GPU4

GPU들이

계속 데이터를 주고받습니다.

이를

East-West Traffic

이라고 합니다.

4. 왜 이렇게 통신이 많을까?

Transformer 학습에서는

각 GPU가

Gradient를 계산합니다.

GPU1

↓

Gradient
GPU2

↓

Gradient

모든 GPU가

결과를 합쳐야 합니다.

GPU1

⇄

GPU2

⇄

GPU3

⇄

GPU4

이 통신이

매 스텝마다 발생합니다.

5. AI에서는 네트워크가 곧 성능이다

예를 들어

GPU 계산은

0.1초

걸립니다.

그런데

AllReduce가

0.3초

걸립니다.

계산

0.1초

↓

통신

0.3초

그러면

GPU는

통신이 끝날 때까지

기다립니다.

즉,

GPU가 놀게 됩니다.

6. AI 네트워크의 목표

일반 네트워크

↓

패킷 전달

AI 네트워크

↓

GPU가 절대 기다리지 않게 만드는 것

즉,

목표 자체가 다릅니다.

7. Scale-Up

Scale-Up은

GPU를

한 서버 안에서 늘리는 것입니다.

예를 들어

Server

↓

GPU × 8

GPU끼리는

NVLink

NVSwitch

로 연결됩니다.

8. Scale-Out

Scale-Out은

서버 자체를 늘립니다.

Node1

GPU ×8

⇄

Node2

GPU ×8

⇄

Node3

GPU ×8

이제

서버 간 네트워크가

중요해집니다.

9. Scale-Up vs Scale-Out
Scale-Up	Scale-Out
GPU 수 증가	서버 수 증가
NVLink 사용	Ethernet / InfiniBand 사용
동일 서버	여러 서버
지연시간이 낮음	네트워크 설계가 중요
10. AI Fabric이란?

Fabric은

단순한 스위치가 아닙니다.

AI에서는

GPU를 연결하는

전체 네트워크를 의미합니다.

GPU

↓

NIC

↓

Leaf

↓

Spine

↓

NIC

↓

GPU

이 전체가

AI Fabric입니다.

11. AI Fabric의 조건

좋은 AI Fabric은

다음을 만족해야 합니다.

높은 대역폭
낮은 지연시간
패킷 손실 최소화
균등한 경로
확장 가능
12. 왜 일반 스위치만으로 부족할까?

웹 서비스에서는

약간의 지연이 있어도

큰 문제가 없습니다.

하지만

AI에서는

GPU 하나라도

늦으면

전체 학습이

느려집니다.

예를 들어

GPU 63개는

끝났는데

GPU 64가

조금 늦었습니다.

GPU1 완료

GPU2 완료

...

GPU63 완료

GPU64 진행중

그러면

나머지 GPU가

모두 기다립니다.

이를 흔히 Straggler(느린 작업자) 문제라고 합니다.

13. AI Networking의 핵심 구성 요소

앞으로 배우게 될 기술입니다.

AI Network

│

├── Ethernet
├── InfiniBand
├── RDMA
├── RoCE
├── DPU
├── SmartNIC
├── NCCL
└── AI Fabric
14. 실제 AI 데이터센터 구조
          Spine Switch
        /      |      \
       /       |       \
   Leaf1    Leaf2    Leaf3
    /  \      / \      /  \
 GPU GPU    GPU GPU   GPU GPU

이 구조를

Clos Network

또는

Leaf-Spine Architecture

라고 합니다.

대규모 AI 클러스터에서 가장 널리 사용됩니다.

15. AI 인프라 엔지니어 관점

여기서부터는 여러분의 기존 네트워크 경험이 큰 강점이 됩니다.

이미 알고 있는 개념들

L2/L3
BGP
ECMP
VXLAN
MTU
QoS

는 AI 환경에서도 매우 중요합니다.

다만,

AI에서는

다음이 추가됩니다.

RDMA
RoCE
PFC
ECN
NCCL
GPU Direct

즉,

기존 네트워크 위에

AI 기술이 올라갑니다.

실무 연결

예를 들어 Kubernetes에서 AI 학습 Pod를 16개 실행한다고 가정해 보겠습니다.

Worker1
  ├─ GPU Pod 1
  ├─ GPU Pod 2

Worker2
  ├─ GPU Pod 3
  ├─ GPU Pod 4

이 Pod들은 학습 과정에서

Parameter 동기화
Gradient 교환
AllReduce

를 반복합니다.

만약 Leaf-Spine 네트워크에서

MTU 설정 불일치
ECN 미설정
PFC 미구성(RoCE 환경)

등이 있다면,

GPU는 충분히 빠르더라도 전체 학습 성능이 크게 저하될 수 있습니다.

AI Networking 전체 구조
Application (PyTorch)

        │

        ▼
NCCL

        │

        ▼
RDMA / TCP

        │

        ▼
NIC / DPU

        │

        ▼
Leaf-Spine Fabric

        │

        ▼
Remote GPU

이 그림이 앞으로 배울 Module 3의 전체 로드맵입니다.

핵심 정리
AI Networking은 GPU 간 통신을 최적화하는 것이 핵심입니다.
AI 환경에서는 North-South보다 East-West Traffic이 훨씬 중요합니다.
Scale-Up은 한 서버 내 GPU 확장, Scale-Out은 여러 서버 확장입니다.
AI Fabric은 GPU를 연결하는 전체 네트워크입니다.
Leaf-Spine 구조는 대규모 AI 클러스터의 표준 아키텍처입니다.
NCA-AIIO 시험 포인트
개념	핵심 포인트
North-South	사용자 ↔ 서비스 트래픽
East-West	서버/GPU 간 트래픽
Scale-Up	서버 내부 GPU 확장
Scale-Out	서버 수 확장
AI Fabric	AI 클러스터 전체 네트워크
Leaf-Spine	AI 데이터센터 표준 구조
Straggler	가장 느린 작업이 전체 성능을 지연시키는 현상
이해도 확인 문제
문제 1

AI 학습 환경에서 가장 중요한 트래픽 유형은 무엇입니까?

A. North-South Traffic

B. East-West Traffic

C. Internet Traffic

D. Broadcast Traffic

<details> <summary><strong>정답 및 해설</strong></summary>

정답: B

분산 AI 학습에서는 GPU 간 Gradient와 Parameter를 지속적으로 교환하므로 East-West Traffic이 핵심입니다.

</details>
문제 2

Scale-Out의 설명으로 가장 적절한 것은 무엇입니까?

A. GPU 클럭을 높이는 기술

B. 하나의 서버에 GPU를 추가하는 방식

C. 여러 서버를 연결하여 클러스터를 확장하는 방식

D. GPU 메모리를 늘리는 기술

<details> <summary><strong>정답 및 해설</strong></summary>

정답: C

Scale-Out은 서버(노드)를 추가하여 전체 AI 클러스터를 확장하는 방식입니다.

</details>
💡 AI 인프라 엔지니어를 위한 한 걸음 더

현재 AI 인프라 업계에서는 네트워크 엔지니어의 역할이 더욱 중요해지고 있습니다.

전통적인 데이터센터에서는 네트워크가 "연결"이 주된 역할이었다면,

AI 데이터센터에서는 네트워크가 GPU 성능을 최대한 끌어내는 요소가 되었습니다.

특히 다음 기술들은 AI 네트워크의 핵심 역량입니다.

RDMA
RoCE v2
ECN(Explicit Congestion Notification)
PFC(Priority Flow Control)
ECMP(Equal-Cost Multi-Path)
GPU Direct RDMA

이 기술들을 이해하면 일반 네트워크 엔지니어에서 AI 네트워크 인프라 엔지니어로 자연스럽게 확장할 수 있습니다.

🎓 심화 지식

AI 클러스터의 규모가 커질수록 통신 비용(Communication Overhead) 이 전체 학습 시간에서 차지하는 비율이 증가합니다.

예를 들어,

8 GPU에서는 계산 시간이 대부분일 수 있지만,
256 GPU, 1,024 GPU, 그 이상에서는 GPU 간 동기화 비용이 성능의 핵심 병목이 됩니다.

그래서 NVIDIA, Broadcom, Arista, Cisco 등은 단순히 더 빠른 스위치를 만드는 것이 아니라 AI Fabric 전체를 최적화하는 방향으로 발전하고 있습니다.


---

NCA-AIIO Master Course
Module 3. AI Networking
제18강. Ethernet vs InfiniBand - AI 네트워크는 무엇을 선택해야 하는가?

이번 강의는 AI 네트워크 설계의 핵심입니다.

"AI 클러스터에는 InfiniBand가 반드시 필요한가?"

"Ethernet으로는 AI를 할 수 없는가?"

현재 AI 업계에서 가장 많이 논의되는 주제 중 하나입니다.

학습 목표

이번 강의를 마치면 다음 질문에 답할 수 있어야 합니다.

Ethernet과 InfiniBand의 차이는 무엇인가?
InfiniBand는 왜 만들어졌는가?
Ethernet은 왜 AI 시장에서 다시 주목받는가?
NVIDIA는 왜 InfiniBand와 Ethernet을 모두 제공하는가?
어떤 환경에서 어떤 네트워크를 선택해야 하는가?
1. AI 학습에서 네트워크의 역할

지난 시간에 배운 것처럼 AI 학습에서는 GPU끼리 계속 통신합니다.

GPU1 ⇄ GPU2 ⇄ GPU3 ⇄ GPU4

GPU가 아무리 빨라도

네트워크가 느리면

전체 학습이 느려집니다.

2. Ethernet이란?

Ethernet은

현재 전 세계 데이터센터의 표준 네트워크입니다.

여러분이 지금까지 구축했던 대부분의 환경이

바로 Ethernet입니다.

예를 들어

Server

↓

Ethernet Switch

↓

Server

AWS

Azure

NCP

Google Cloud

모두 Ethernet 기반입니다.

Ethernet의 장점
표준 기술
가격 경쟁력
다양한 벤더 지원
운영 인력 확보 용이
기존 데이터센터와 호환
3. InfiniBand란?

InfiniBand는

HPC(High Performance Computing)를 위해 만들어진

초고속 네트워크입니다.

초기 목표는

CPU와 CPU,

GPU와 GPU 사이의

초저지연 통신이었습니다.

구조는 비슷합니다.

GPU Server

↓

InfiniBand Switch

↓

GPU Server

하지만

내부 동작은 Ethernet과 상당히 다릅니다.

4. Ethernet vs InfiniBand
Ethernet	InfiniBand
범용 네트워크	HPC/AI 전용
가장 널리 사용	특수 목적
다양한 제조사	NVIDIA 중심(과거 Mellanox)
TCP/IP 중심	RDMA를 기본 지원
운영 경험 풍부	전문성이 더 요구됨
5. 가장 큰 차이

핵심은

CPU를 얼마나 거치느냐입니다.

일반 Ethernet(TCP/IP)은

GPU

↓

NIC

↓

CPU

↓

Kernel

↓

Network

과정을 거칩니다.

CPU 개입이 많습니다.

InfiniBand는

GPU

↓

NIC

↓

Network

CPU 개입을 최소화합니다.

이를 가능하게 하는 기술이

RDMA(Remote Direct Memory Access)입니다.

참고: 최신 Ethernet도 RoCE(RDMA over Converged Ethernet)를 통해 RDMA를 사용할 수 있습니다. 따라서 위 비교는 '기본 동작 방식'을 설명한 것입니다.

6. Latency 비교

AI에서는

지연시간이 중요합니다.

예를 들어

GPU 계산

0.2 ms

인데

네트워크가

3 ms

걸린다면

GPU는 계속 기다립니다.

InfiniBand는

이 지연시간을 매우 낮게 설계했습니다.

7. Bandwidth도 중요하다

최근 AI에서는

Bandwidth도

매우 중요합니다.

예를 들어

속도	Ethernet	InfiniBand
100Gbps	O	O
200Gbps	O	O
400Gbps	O	O
800Gbps	최신 세대에서 지원	최신 세대에서 지원

속도 자체는

이제 큰 차이가 아닙니다.

차이는

통신 방식과 효율입니다.

8. 왜 InfiniBand가 AI에서 강했을까?

과거에는

Ethernet이

RDMA를 잘 지원하지 못했습니다.

그래서

대규모 AI와 HPC는

InfiniBand를 선택했습니다.

예를 들어

DGX Cluster

↓

InfiniBand Fabric

이

오랫동안

표준이었습니다.

9. 그런데 왜 Ethernet이 다시 성장할까?

최근에는

Ethernet이

엄청나게 발전했습니다.

대표 기술이

RoCE v2
ECN
PFC
AI Ethernet
Spectrum-X

입니다.

즉,

Ethernet도

RDMA를

잘 사용할 수 있게 되었습니다.

10. NVIDIA도 Ethernet을 만든다

많은 사람들이

NVIDIA = InfiniBand

라고 생각합니다.

하지만

현재 NVIDIA는

두 가지를 모두 제공합니다.

제품군	용도
Quantum	InfiniBand Fabric
Spectrum-X	AI Ethernet Fabric

왜냐하면

시장 자체가

Ethernet으로도

빠르게 이동하고 있기 때문입니다.

11. Spectrum-X란?

Spectrum-X는

AI 전용 Ethernet 플랫폼입니다.

구성은

GPU

↓

BlueField DPU

↓

Spectrum Switch

↓

GPU

입니다.

즉,

Ethernet이지만

AI에 최적화되어 있습니다.

12. 언제 Ethernet을 선택할까?

대부분의 기업은

이미 Ethernet을 사용합니다.

예를 들어

기업 데이터센터
클라우드
금융
제조
공공

기존 인프라를

활용할 수 있습니다.

13. 언제 InfiniBand를 선택할까?

다음과 같은 경우입니다.

초대형 AI 학습
HPC
연구소
슈퍼컴퓨터
수천 개 GPU Cluster

최대한의 성능이

필요한 환경입니다.

14. 실제 AI 데이터센터

최근에는

두 가지가 모두 존재합니다.

Storage

↓

Ethernet

↓

AI Cluster

또는

Storage

↓

InfiniBand

↓

GPU Cluster

또는

Management

↓

Ethernet

AI Training

↓

InfiniBand

처럼

혼합 구성도

매우 많습니다.

15. AI 인프라 엔지니어 관점

AI 인프라 엔지니어는

"무조건 InfiniBand"

라고 생각하면 안 됩니다.

다음 요소를 함께 고려해야 합니다.

예산
운영 인력
기존 네트워크
GPU 개수
확장 계획
클라우드 연계

즉,

기술이 아니라 요구사항에 맞는 설계가 중요합니다.

실무 연결

예를 들어 64 GPU AI 클러스터를 구축한다고 가정해 보겠습니다.

구성 A
Leaf-Spine Ethernet

↓

RoCE v2

↓

400GbE

장점

기존 데이터센터와 통합
운영 경험 활용
클라우드와 유사한 구조
구성 B
InfiniBand Fabric

↓

Quantum Switch

↓

NCCL

장점

매우 낮은 지연시간
HPC 및 초대형 AI 학습에 적합
실제 시장 흐름

현재 업계는 다음과 같이 변화하고 있습니다.

환경	많이 사용하는 방식
AWS, Azure, GCP, NCP	Ethernet 기반
Meta	AI Ethernet 적극 투자
Microsoft	Ethernet + RoCE 중심
OpenAI(인프라 파트너 환경 포함)	Ethernet과 InfiniBand를 목적에 따라 모두 활용
HPC 슈퍼컴퓨터	InfiniBand 비중이 높음

특정 기업은 여러 세대와 프로젝트에 따라 서로 다른 네트워크를 사용할 수 있으므로, "한 가지 방식만 사용한다"고 일반화하기는 어렵습니다.

핵심 정리
Ethernet은 범용 데이터센터 네트워크입니다.
InfiniBand는 HPC와 AI를 위한 고성능 네트워크입니다.
InfiniBand는 RDMA를 기본으로 설계되었습니다.
Ethernet도 RoCE v2를 통해 AI 네트워크로 크게 발전했습니다.
현재 AI 업계는 Ethernet과 InfiniBand를 모두 활용하고 있습니다.
NCA-AIIO 시험 포인트
개념	핵심 포인트
Ethernet	범용 데이터센터 네트워크
InfiniBand	HPC/AI 전용 고성능 네트워크
RDMA	CPU 개입을 줄이는 원격 메모리 접근 기술
RoCE v2	Ethernet에서 RDMA 구현
Quantum	NVIDIA InfiniBand 제품군
Spectrum-X	NVIDIA AI Ethernet 제품군
이해도 확인 문제
문제 1

InfiniBand가 AI 학습에서 오랫동안 선호된 가장 큰 이유는 무엇입니까?

A. 인터넷 연결이 더 빠르기 때문이다.

B. GPU 가격이 저렴하기 때문이다.

C. 낮은 지연시간과 RDMA 기반 통신을 제공하기 때문이다.

D. SSD 성능이 더 좋기 때문이다.

<details> <summary><strong>정답 및 해설</strong></summary>

정답: C

InfiniBand는 RDMA를 기반으로 CPU 개입을 줄이고 낮은 지연시간을 제공하여 HPC와 AI 학습에서 널리 사용되었습니다.

</details>
문제 2

RoCE v2의 가장 적절한 설명은 무엇입니까?

A. Ethernet에서 RDMA를 사용할 수 있도록 하는 기술

B. GPU 메모리를 압축하는 기술

C. NVLink의 새로운 이름

D. SSD 연결 프로토콜

<details> <summary><strong>정답 및 해설</strong></summary>

정답: A

RoCE(RDMA over Converged Ethernet)는 Ethernet 환경에서 RDMA를 사용할 수 있도록 하는 기술입니다.

</details>
💡 AI 인프라 엔지니어를 위한 한 걸음 더

사용자의 현재 네트워크 경력을 기준으로 보면, 이 부분은 가장 큰 강점이 될 수 있습니다.

지금까지 다뤄온

Leaf-Spine
ECMP
MTU
BGP
VXLAN
Kubernetes 네트워킹
금융권 네트워크 설계

는 AI 시대에도 그대로 활용됩니다.

여기에 추가되는 것은 다음 기술들입니다.

기존 네트워크

        │

        ▼

Ethernet Fabric

        │

        ▼

RoCE v2

        │

        ▼

RDMA

        │

        ▼

GPU Cluster

즉, 기존 네트워크 지식 위에 AI 전용 기술을 쌓는 것이 AI 네트워크 엔지니어의 성장 경로입니다.

🎓 심화 지식

최근 AI 업계의 흐름은 "InfiniBand 대 Ethernet"이 아니라 "어떤 Ethernet이 AI에 적합한가"로 바뀌고 있습니다.

그래서 앞으로는 다음 기술들이 더욱 중요해질 것입니다.

RoCE v2
PFC(Priority Flow Control)
ECN(Explicit Congestion Notification)
DCQCN(Data Center Quantized Congestion Notification)
BlueField DPU
Spectrum-X

이 기술들이 함께 동작해야 Ethernet에서도 InfiniBand에 가까운 AI 네트워크 성능을 구현할 수 있습니다.

---

NCA-AIIO Master Course
Module 3. AI Networking
제19강. RDMA와 RoCE - CPU를 우회하는 AI 네트워크의 핵심 기술

이번 강의는 AI Networking에서 가장 중요한 강의입니다.

AI 인프라 엔지니어가 되려면 반드시 이해해야 하는 기술이 바로 RDMA(Remote Direct Memory Access)입니다.

현재 NVIDIA, Broadcom, Cisco, Arista, Microsoft, Meta 등 거의 모든 AI 인프라 기업이 RDMA 기반 기술에 집중하고 있습니다.

학습 목표

이번 강의를 마치면 다음 질문에 답할 수 있어야 합니다.

RDMA란 무엇인가?
기존 TCP/IP와 무엇이 다른가?
CPU를 왜 우회(Bypass)하는가?
RoCE v2는 어떻게 동작하는가?
PFC와 ECN은 왜 필요한가?
GPUDirect RDMA란 무엇인가?
NCCL은 RDMA를 어떻게 사용하는가?
1. 기존 TCP/IP 통신의 문제

먼저 우리가 익숙한 TCP/IP 통신을 살펴보겠습니다.

Application
      │
      ▼
Socket API
      │
      ▼
Kernel
      │
      ▼
TCP/IP Stack
      │
      ▼
NIC
      │
      ▼
Network

데이터 하나를 보내기 위해

CPU는

시스템 콜(System Call)
Kernel 진입
TCP 처리
메모리 복사
NIC 전송

을 수행합니다.

문제는?

AI 학습에서는

매우 작은 메시지를

수백만 번 보냅니다.

예를 들어

Gradient

↓

GPU1 → GPU2

이 작업이

매 학습 스텝마다

반복됩니다.

CPU가 계속 개입하면

병목이 발생합니다.

2. RDMA란?

RDMA는

Remote Direct Memory Access

입니다.

이름 그대로

원격 서버의 메모리에 CPU 개입 없이 직접 접근하는 기술

입니다.

기존 방식

Server A

CPU

↓

Kernel

↓

NIC

RDMA

Server A

NIC

⇄

NIC

Server B

CPU 개입이 크게 줄어듭니다.

3. RDMA의 핵심

RDMA의 핵심은

Zero Copy

입니다.

기존 TCP는

Application Buffer

↓

Kernel Buffer

↓

NIC

여러 번 복사합니다.

RDMA는

Application Buffer

↓

NIC

↓

Network

직접 전송합니다.

복사가 거의 없습니다.

4. CPU Bypass

RDMA를 이야기할 때

가장 많이 듣는 용어입니다.

TCP

CPU 많이 사용

↓

Latency 증가
RDMA

CPU 거의 사용 안 함

↓

Latency 감소

이것을

CPU Bypass라고 합니다.

정확한 표현: CPU가 완전히 사라지는 것은 아닙니다. 연결 설정, 메모리 등록(Register Memory), 완료 처리 등에는 CPU가 관여하지만, 데이터 전송 경로에서 CPU 개입을 크게 줄이는 것이 핵심입니다.

5. RDMA의 장점

RDMA는

세 가지를 제공합니다.

낮은 지연시간(Low Latency)
높은 처리량(High Throughput)
낮은 CPU 사용률

AI에서는

세 가지 모두 중요합니다.

6. 그런데 Ethernet은?

원래

RDMA는

InfiniBand에서

사용되었습니다.

그런데

기업들은

Ethernet을

포기할 수 없었습니다.

그래서 등장한 것이

RoCE입니다.

7. RoCE란?

RoCE는

RDMA over Converged Ethernet

입니다.

즉

Ethernet에서도

RDMA를 사용할 수 있게 만든 기술입니다.

구조는

GPU

↓

NIC

↓

Ethernet

↓

NIC

↓

GPU

입니다.

8. RoCE v1과 v2

초기에는

RoCE v1이 있었습니다.

하지만

L2에서만

동작했습니다.

현재는

거의 대부분

RoCE v2를 사용합니다.

RoCE v2는

RDMA

↓

UDP/IP

↓

Ethernet

위에서

동작합니다.

즉

라우팅이 가능합니다.

9. RoCE v2 패킷

실제로는

다음과 같은 구조입니다.

Ethernet

↓

IP

↓

UDP

↓

RDMA Payload

TCP는

사용하지 않습니다.

시험 포인트: RoCE v2는 UDP/IP 기반으로 RDMA 패킷을 전송합니다.

10. 그런데 왜 PFC가 필요할까?

TCP는

패킷이

유실되면

재전송합니다.

RDMA는

유실을

매우 싫어합니다.

그래서

RoCE에서는

가능한 한

패킷이 손실되지 않는 환경을 만듭니다.

그 기술이

PFC입니다.

11. PFC(Priority Flow Control)

PFC는

우선순위별로

트래픽을

잠시 멈출 수 있습니다.

예를 들어

Switch Buffer Full

↓

Pause

↓

NIC 대기

패킷을 버리는 대신

잠시 기다립니다.

이를 통해

RDMA 트래픽의 손실을 줄입니다.

12. ECN이란?

그런데

PFC만 사용하면

또 다른 문제가 생깁니다.

Pause가

계속 발생하면

네트워크 전체가

느려질 수 있습니다.

이를 Head-of-Line Blocking이라고 합니다.

그래서

ECN을 함께 사용합니다.

13. ECN(Explicit Congestion Notification)

ECN은

혼잡이 생기면

패킷에

표시(Mark)를 합니다.

Switch

↓

Congestion

↓

ECN Mark

↓

Sender

보내는 측은

전송 속도를

조절합니다.

즉

혼잡을

미리 완화합니다.

14. PFC + ECN

RoCE에서는

둘을

함께 사용합니다.

Congestion

↓

ECN

↓

속도 감소
Buffer Overflow

↓

PFC

↓

일시 정지

이 조합이

현재 AI Ethernet의

표준입니다.

15. GPUDirect RDMA

여기서

NVIDIA의

핵심 기술이 등장합니다.

기존에는

GPU

↓

CPU RAM

↓

NIC

으로

복사했습니다.

GPUDirect RDMA는

GPU HBM

↓

NIC

↓

Network

직접 전송합니다.

CPU 메모리를

거치지 않습니다.

참고: GPUDirect RDMA를 사용하려면 GPU, NIC, 드라이버, CUDA, 네트워크가 모두 이를 지원해야 합니다.

16. NCCL은 어떻게 사용할까?

멀티 GPU 학습에서는

PyTorch

↓

NCCL

↓

RDMA

↓

RoCE

↓

NIC

↓

Network

순으로

통신이 이루어집니다.

NCCL이

자동으로

RDMA를 활용합니다.

실무 연결

Kubernetes AI Cluster에서

8개의 GPU Node가 있다고 가정해 보겠습니다.

GPU Node1
     │
Mellanox/NVIDIA NIC
     │
400GbE RoCE
     │
Leaf-Spine Fabric
     │
GPU Node2

AI 학습 시

PyTorch DDP

↓

NCCL

↓

RDMA

↓

RoCE

↓

NIC

가 동작합니다.

만약

PFC 미설정
MTU 불일치
ECN 미구성
NIC Firmware 불일치

등이 발생하면

NCCL Timeout

AllReduce Slow

와 같은 장애가 발생할 수 있습니다.

RDMA 전체 구조
Application (PyTorch)

        │

        ▼
NCCL

        │

        ▼
RDMA API

        │

        ▼
RoCE v2

        │

        ▼
NIC

        │

        ▼
Ethernet Fabric

        │

        ▼
Remote GPU
핵심 정리
RDMA는 CPU 개입을 최소화하여 원격 메모리에 직접 접근하는 기술입니다.
RDMA는 Zero Copy와 CPU Bypass를 통해 낮은 지연시간과 높은 처리량을 제공합니다.
RoCE v2는 Ethernet에서 RDMA를 구현하는 방식입니다.
RoCE v2는 UDP/IP 기반으로 동작합니다.
PFC와 ECN은 RoCE 환경에서 안정적인 통신을 위해 함께 사용됩니다.
GPUDirect RDMA는 GPU 메모리와 NIC 간 직접 데이터 전송을 지원합니다.
NCA-AIIO 시험 포인트
개념	핵심 포인트
RDMA	CPU 개입 최소화 원격 메모리 접근
Zero Copy	중간 메모리 복사 최소화
CPU Bypass	데이터 경로에서 CPU 개입 감소
RoCE v2	Ethernet 기반 RDMA, UDP/IP 사용
PFC	패킷 손실을 줄이기 위한 우선순위 기반 Flow Control
ECN	혼잡을 알리고 송신 속도를 조절
GPUDirect RDMA	GPU HBM ↔ NIC 직접 데이터 전송
이해도 확인 문제
문제 1

RoCE v2가 사용하는 전송 계층 프로토콜은 무엇입니까?

A. TCP

B. ICMP

C. UDP

D. SCTP

<details> <summary><strong>정답 및 해설</strong></summary>

정답: C

RoCE v2는 UDP/IP 위에서 RDMA 패킷을 전송합니다.

</details>
문제 2

GPUDirect RDMA의 가장 큰 장점은 무엇입니까?

A. GPU 클럭을 높인다.

B. GPU 메모리와 NIC 간 데이터를 직접 전송하여 CPU 메모리 경유를 줄인다.

C. SSD 성능을 높인다.

D. Tensor Core 개수를 늘린다.

<details> <summary><strong>정답 및 해설</strong></summary>

정답: B

GPUDirect RDMA는 GPU HBM과 NIC 간 직접 데이터 전송을 가능하게 하여 지연시간과 CPU 오버헤드를 줄입니다.

</details>
💡 AI 인프라 엔지니어를 위한 한 걸음 더

사용자의 현재 업무를 생각하면 이 강의는 특히 중요합니다.

지금까지 다뤄온 금융권 네트워크에서

Leaf-Spine
MTU
ECMP
VXLAN
방화벽
Kubernetes

를 이해하고 있다면,

여기에 추가되는 것은 다음뿐입니다.

기존 Ethernet

        │

        ▼

RoCE v2

        │

        ▼

RDMA

        │

        ▼

GPUDirect RDMA

        │

        ▼

NCCL

즉, 기존 데이터센터 네트워크 위에 AI 통신 계층을 올리는 것이 AI 네트워크의 핵심입니다.

🎓 심화 지식

실제 AI 클러스터에서는 PFC만 사용하는 것은 권장되지 않습니다.

이유는 PFC가 과도하게 동작하면 네트워크 전체가 멈추는 PFC Storm이나 Head-of-Line Blocking이 발생할 수 있기 때문입니다.

그래서 최신 AI Ethernet에서는 다음 조합이 일반적입니다.

ECN으로 혼잡을 조기에 감지
DCQCN(Data Center Quantized Congestion Notification)으로 송신 속도 제어
PFC는 마지막 안전장치(Fallback)로 사용

이 설계는 특히 NVIDIA Spectrum-X, Broadcom Tomahawk 계열, Cisco Silicon One 기반 AI 네트워크에서 중요한 개념입니다.

---

NCA-AIIO Master Course
Module 3. AI Networking
제20강. AI Network Design - Leaf-Spine, ECMP, Clos Fabric

이번 강의는 AI 데이터센터 네트워크 설계의 핵심입니다.

지금까지는 RDMA, RoCE, InfiniBand 같은 개별 기술을 배웠습니다.

이번에는 이 기술들을 대규모 AI 클러스터에서 어떻게 연결하는지를 배웁니다.

이 강의는 AI 인프라 엔지니어가 실제 데이터센터를 설계할 때 가장 중요한 내용입니다.

학습 목표

이번 강의를 마치면 다음 질문에 답할 수 있어야 합니다.

Leaf-Spine 아키텍처란 무엇인가?
Clos Fabric은 무엇인가?
ECMP는 왜 AI에서 필수인가?
AI Fabric은 어떻게 설계하는가?
GPU 수가 증가하면 네트워크는 어떻게 확장되는가?
장애를 최소화하는 AI 네트워크 설계 원칙은 무엇인가?
1. AI 클러스터는 왜 일반 네트워크와 다를까?

웹 서비스에서는

사용자

↓

Load Balancer

↓

Web

↓

DB

처럼 North-South 트래픽이 중심입니다.

하지만 AI 클러스터는

GPU ⇄ GPU ⇄ GPU ⇄ GPU

GPU끼리 대부분의 트래픽을 주고받습니다.

즉,

East-West 트래픽이 압도적입니다.

2. 전통적인 3-Tier 네트워크

예전 데이터센터는 다음과 같은 구조였습니다.

Core

↓

Aggregation

↓

Access

↓

Server

이 구조는

웹 서비스에는 적합하지만,

AI에는 적합하지 않습니다.

왜 문제가 될까?

GPU1과 GPU2가 통신하려면

GPU

↓

Access

↓

Aggregation

↓

Core

↓

Aggregation

↓

Access

↓

GPU

처럼 여러 단계를 거칩니다.

Hop 수가 증가하면

Latency 증가
혼잡 증가
병목 증가

가 발생합니다.

3. Leaf-Spine Architecture

그래서 등장한 것이

Leaf-Spine입니다.

       Spine
      /  |  \
     /   |   \
 Leaf Leaf Leaf
   |     |     |
 Server Server Server

모든 Leaf가

모든 Spine과 연결됩니다.

4. Leaf Switch

Leaf는

서버와 직접 연결됩니다.

GPU Server

↓

Leaf

즉,

Top-of-Rack(ToR) 스위치 역할을 합니다.

5. Spine Switch

Spine은

Leaf끼리 연결합니다.

Leaf

↓

Spine

↓

Leaf

Server는

Spine에 직접 연결되지 않습니다.

6. Clos Fabric이란?

Clos Fabric은

Leaf-Spine 구조를 수학적으로 일반화한 네트워크 구조입니다.

핵심 목표는

어떤 서버에서 어떤 서버로 가더라도 거의 동일한 성능을 제공하는 것

입니다.

7. Clos Fabric 구조
         Spine1
       /    |    \
Leaf1 Leaf2 Leaf3 Leaf4
  |      |      |      |
GPU    GPU    GPU    GPU

모든 Leaf는

모든 Spine과 연결됩니다.

장점
장애 허용성(Fault Tolerance)
높은 대역폭
확장성
균등한 경로
8. ECMP란?

ECMP는

Equal-Cost Multi-Path

입니다.

쉽게 말하면

여러 개의 같은 비용의 경로를

동시에 사용하는 기술입니다.

예를 들어

GPU1

↓

Leaf

↙   ↓   ↘

Spine1 Spine2 Spine3

↓

Leaf

↓

GPU2

세 개의 경로가

모두 사용됩니다.

9. ECMP가 왜 중요할까?

만약

Spine 하나만 사용하면

GPU

↓

Spine1

↓

GPU

Spine1이

혼잡해집니다.

ECMP는

자동으로

트래픽을 분산합니다.

10. AI에서는 균등 분산이 중요하다

AI 학습은

모든 GPU가

동시에

통신합니다.

따라서

한 경로만

혼잡하면

GPU 전체가

기다립니다.

ECMP는

이 문제를 줄여줍니다.

11. Oversubscription

AI 설계에서

매우 중요한 개념입니다.

예를 들어

Leaf에

GPU

400G

×

32개

가 연결됩니다.

총

12.8Tbps

입니다.

그런데

Spine으로는

6.4Tbps만 연결하면?

Oversubscription

2:1

입니다.

AI에서는?

가능하면

Oversubscription을

없애거나

매우 낮게 유지합니다.

즉,

1:1에

가깝게 설계합니다.

12. Non-Blocking Fabric

AI에서는

가장 중요한 목표입니다.

모든 GPU

↓

동시에 통신 가능

이것을

Non-Blocking Fabric

이라고 합니다.

13. GPU가 늘어나면?

예를 들어

8 GPU

↓

64 GPU

↓

256 GPU

↓

1024 GPU

가 됩니다.

확장 방법은

Spine을

늘리는 것입니다.

Leaf

↓

Spine 추가

↓

Leaf

Clos Fabric은

이런 확장을

쉽게 지원합니다.

14. 실제 AI 데이터센터

예를 들어

256 GPU Cluster

         Spine
     / / / | \ \ \
Leaf Leaf Leaf Leaf
 |      |      |
GPU    GPU    GPU

GPU들은

RoCE

RDMA

NCCL을 사용합니다.

네트워크는

Clos Fabric으로

구성됩니다.

15. 장애가 발생하면?

예를 들어

Spine 하나가

장애입니다.

Spine1 (X)

Spine2

Spine3

ECMP는

자동으로

나머지 경로를

사용합니다.

서비스는

계속됩니다.

이것이

AI Fabric의

강점입니다.

16. AI 인프라 엔지니어 관점

실무에서는

다음을 반드시 확인합니다.

ECMP 구성
MTU 일치(Jumbo Frame 여부 포함)
Spine 간 링크 속도
Leaf Uplink 수
Oversubscription Ratio
PFC/ECN 정책
NCCL Topology
실무 연결

예를 들어 64 GPU AI 클러스터를 설계한다고 가정해 보겠습니다.

구성 예시
GPU Server × 8
(각 서버 GPU 8개)

        │
400GbE NIC × 2
        │
     Leaf Switch
      ╱      ╲
   Spine1  Spine2

각 서버는 이중화된 NIC를 통해 Leaf에 연결되고,

Leaf는 모든 Spine과 연결됩니다.

이렇게 하면

장애 시 우회 가능
ECMP 부하 분산
RDMA 성능 확보

가 가능합니다.

장애 사례

다음과 같은 상황을 생각해 보겠습니다.

사례 1
Leaf1

↓

MTU 9000

Leaf2

↓

MTU 1500

결과

RDMA 성능 저하
패킷 단편화(Fragmentation) 가능
NCCL Timeout
사례 2
GPU Server

↓

Leaf

↓

Spine1 (100% 사용)

Spine2 (10% 사용)

원인

ECMP 해시 불균형
특정 Flow 집중

해결

ECMP 정책 점검
Flow 분산 방식 확인
네트워크 Telemetry 분석
AI Network Design 전체 구조
Application (PyTorch)

        │

        ▼
NCCL

        │

        ▼
RDMA / RoCE

        │

        ▼
NIC

        │

        ▼
Leaf Switch

        │

        ▼
Spine Switch

        │

        ▼
Remote GPU
핵심 정리
Leaf는 서버와 직접 연결되는 ToR 스위치입니다.
Spine은 Leaf 간 통신을 담당합니다.
Clos Fabric은 확장성과 균등한 성능을 제공하는 네트워크 구조입니다.
ECMP는 여러 경로로 트래픽을 분산하여 병목을 줄입니다.
AI Fabric은 가능한 한 Non-Blocking 구조와 낮은 Oversubscription을 목표로 설계합니다.
NCA-AIIO 시험 포인트
개념	핵심 포인트
Leaf	서버 연결 스위치(ToR)
Spine	Leaf 연결 스위치
Clos Fabric	다단계 고확장 네트워크 구조
ECMP	Equal-Cost Multi-Path
Oversubscription	다운링크 대비 업링크 대역폭 비율
Non-Blocking	모든 노드가 동시에 통신 가능한 구조
이해도 확인 문제
문제 1

Leaf-Spine 구조에서 Leaf Switch의 역할은 무엇입니까?

A. 인터넷과 연결한다.

B. 서버와 직접 연결된다.

C. GPU 메모리를 관리한다.

D. Tensor Core를 제어한다.

<details> <summary><strong>정답 및 해설</strong></summary>

정답: B

Leaf는 Top-of-Rack(ToR) 스위치로 서버와 직접 연결됩니다.

</details>
문제 2

AI 네트워크에서 ECMP를 사용하는 가장 큰 이유는 무엇입니까?

A. GPU 메모리를 늘리기 위해

B. 여러 경로에 트래픽을 분산하여 병목을 줄이기 위해

C. SSD를 연결하기 위해

D. CUDA Runtime을 최적화하기 위해

<details> <summary><strong>정답 및 해설</strong></summary>

정답: B

ECMP는 동일 비용 경로를 모두 활용하여 특정 링크에 트래픽이 집중되는 것을 방지합니다.

</details>
💡 AI 인프라 엔지니어를 위한 한 걸음 더

이 강의는 특히 현재까지 쌓아온 네트워크 경험과 가장 직접적으로 연결됩니다.

예를 들어 지금까지 다뤄본 기술인

Leaf-Spine
ECMP
BGP
VXLAN
MTU
Kubernetes CNI

는 AI 데이터센터에서도 그대로 사용됩니다.

차이점은 목적입니다.

기존 데이터센터에서는

"서비스가 연결되면 된다."

가 목표였다면,

AI 데이터센터에서는

"GPU가 단 1ms도 기다리지 않도록 만드는 것."

이 목표입니다.

즉, 네트워크의 성공 기준이 연결성에서 GPU 효율 극대화로 바뀌는 것입니다.

🎓 심화 지식

초대형 AI 클러스터(수천~수만 GPU)에서는 단순한 Leaf-Spine만으로는 부족할 수 있습니다.

이때는 다음과 같은 기술이 추가됩니다.

Adaptive Routing: 혼잡이 적은 경로를 동적으로 선택
Congestion Telemetry: 실시간 혼잡 상태 수집
In-band Network Telemetry(INT): 패킷 자체에 네트워크 상태 정보를 포함
Load Balancing 최적화: Elephant Flow와 Mouse Flow를 구분하여 처리

이러한 기능은 NVIDIA Spectrum-X, Cisco Silicon One, Broadcom Tomahawk 계열 스위치 등 최신 AI 네트워크 장비에서 중요한 차별화 요소가 되고 있습니다.