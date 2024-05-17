# 베이스 이미지로 Python 3.9 사용
FROM python:3.9

# 환경 변수 설정
ENV PYTHONUNBUFFERED=1

# 작업 디렉토리 설정
WORKDIR /app

# 의존성 설치
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# 소스 코드 복사
COPY . /app/

# 컨테이너 실행 시 실행될 명령어 설정
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
