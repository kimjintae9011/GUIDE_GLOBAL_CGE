# -*- coding: utf-8 -*-
"""
Created on Wed Apr 29 14:16:04 2026

@author: kimc0
"""

import pandas as pd
import os

file_path = 'OUTPUT/Detailed_Emissions_by_Sector_Substance_CO2eq.csv'
if os.path.exists(file_path):
    df = pd.read_csv(file_path)

    # 1. 기본 식별 컬럼 및 2019년 데이터만 추출
    base_cols = ['Region', 'ipcc_code_2006_for_standard_report', 'ipcc_code_2006_for_standard_report_name']
    df_2019 = df[base_cols + ['Substance', 'Y_2019']].copy()

    # 2. 피벗(Pivot) 테이블 생성: 행(국가, 섹터), 열(물질), 값(배출량)
    pivot_df = df_2019.pivot_table(
        index=base_cols,
        columns='Substance',
        values='Y_2019',
        aggfunc='sum'
    ).fillna(0) # 배출량이 없는 경우 결측치(NaN) 대신 0으로 채움

    # 3. 직관적인 열(물질) 순서 지정
    # 주요 온실가스 3종 + CO2bio를 맨 앞으로, 나머지 F-gas는 알파벳 순으로 정렬
    main_gases = ['CO2', 'CH4', 'N2O', 'CO2bio']
    f_gases = sorted([col for col in pivot_df.columns if col not in main_gases])
    ordered_cols = [col for col in main_gases if col in pivot_df.columns] + f_gases

    # 4. 열 순서 적용 및 행 정렬 (국가 -> 섹터명 순서)
    pivot_df = pivot_df[ordered_cols]
    pivot_df = pivot_df.sort_index()

    # 5. 저장하기 좋게 인덱스를 일반 컬럼으로 변환
    final_df = pivot_df.reset_index()

    # 6. CSV 저장
    out_path = 'OUTPUT/Emissions_2019_Matrix_by_Sector_Substance.csv'
    final_df.to_csv(out_path, index=False)
    print(f"변환 완료! 결과 파일: {out_path}")
else:
    print("[오류] 원본 파일을 찾을 수 없습니다.")