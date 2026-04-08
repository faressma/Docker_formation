FROM python:3-slim

WORKDIR /usr/src/app

COPY . .


RUN adduser appuser

USER appuser

RUN pip install --no-cache-dir -r requirements.txt


CMD [ "uvicorn", "main:app", "--host", "0.0.0.0" ]
