# app/Dockerfile

FROM python:3.9-slim

EXPOSE 8501

RUN mkdir /app
WORKDIR /app
ADD . /app/


RUN pip3 install -r requirements.txt

ENTRYPOINT ["streamlit", "run", "/app/demo.py", "--server.port=8501", "--server.address=0.0.0.0"]
