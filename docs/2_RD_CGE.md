## 2. RD_CGE: GTAP 데이터 가공 및 변환 (DATA_GTAP11c_new.gms)

이 문서는 동태 CGE 모형에 사용될 기초 데이터를 생성하는 GAMS 코드(`DATA_GTAP11c_new.gms`)의 주요 로직과 수식을 설명합니다.

### 개요

이 코드의 핵심 목표는 GTAP 11버전의 원시 데이터(.har, .prm)를 PEP-w-1 CGE 모형 구조에 맞게 **가공, 집계, 균형 조정**하여 최종적인 GDX 파일(`DATA_AGG-2019_GTAP11c_new.gdx`)을 생성하는 것입니다.

전체 프로세스는 다음과 같이 구성됩니다.
1.  **세트 정의 및 매핑**: GTAP의 세부 부문을 분석 목적에 맞게 재정의하고 매핑합니다.
2.  **변수 계산**: GTAP 원시 변수를 조합하여 CGE 모형에 필요한 변수(소비, 투자, 수출입 등)를 계산합니다.
3.  **데이터 균형 조정**: 계산된 데이터의 정합성을 맞추기 위해 값을 보정합니다.
4.  **탄력성 계수 집계**: 세부 부문의 CES 대체탄력성을 집계하여 새로운 부문의 탄력성을 계산합니다.
5.  **동태모형용 파라미터 준비**: 인구 및 GDP 성장률 등 동태적 분석에 필요한 시계열 파라미터를 계산합니다.

### 1. 세트 정의 및 매핑 (Set Definition and Mapping)

GTAP 데이터베이스는 산업(acts), 상품(comm), 지역(reg) 등이 매우 세분화되어 있습니다. 이를 분석 목적에 맞는 더 큰 범주의 세트(J, I, Z 등)로 집계하는 과정입니다.

예를 들어, `j2acts`는 새로 정의한 산업(`j`)이 GTAP의 어떤 세부 산업(`acts`)에 해당하는지를 정의합니다.

**코드 예시: 산업 부문 매핑**

기존 GTAP 데이터베이스는 Format 5 version을 사용했지만, GTAPv7 모형과함께 Format 6 versions을 사용합니다. 


### 2. 주요 변수 계산 (Variable Calculation)

CGE 모형에 기초가 되는 사회계정행렬(SAM)의 각 항목을 GTAP 변수들을 이용해 계산합니다.

#### 2.1. 가계 소비 (Household Consumption)

가계 소비는 국내 생산품에 대한 소비(VDPP)와 수입품에 대한 소비 VMPP의 합으로 계산됩니다.

CO(i,z) = SUM{(comm,reg)$[i2comm(i,comm)$z2reg(z,reg)],
               VDPP(comm,reg)+VMPP(comm,reg)};