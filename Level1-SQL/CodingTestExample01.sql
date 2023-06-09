# ANIMAL_INS 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. ANIMAL_INS 테이블 구조는 다음과 같으며, 
# ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE는
# 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

# 예를 들어 ANIMAL_INS 테이블이 다음과 같다면
ANIMAL_ID	ANIMAL_TYPE	DATETIME	        INTAKE_CONDITION	NAME	    SEX_UPON_INTAKE
A399552	    Dog	        2013-10-14 15:38:00	Normal	            Jack	    Neutered Male
A379998	    Dog	        2013-10-23 11:42:00	Normal	            Disciple	Intact Male
A370852	    Dog	        2013-11-03 15:04:00	Normal	            Katie	    Spayed Female
A403564	    Dog	        2013-11-18 17:03:00	Normal	            Anna	    Spayed Female

# 동물 보호소에 가장 먼저 들어온 동물의 이름을 조회하는 SQL 문을 작성해주세요.

-- 코드를 입력하세요
SELECT Name
# 동물의 이름을 출력 하겠습니다.

FROM Animal_ins
# Animal_ins 테이블을 사용하겠습니다.

WHERE Datetime = (SELECT MIN(datetime) FROM Animal_ins)
# 가장 먼저 들어온 동물을 알기 위해서는 DateTime을 이용해야하는데
# 가장 적절한 것은 Datetime이 가장 낮은 날짜로 조건을 맞추는 것이며
# 작은 SQL문을 작성해 DateTime이랑 일치 시킵니다.