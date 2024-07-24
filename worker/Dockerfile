FROM python:3.9-alpine

WORKDIR /app

COPY worker.py requirements.txt run.sh ./
RUN pip install -r requirements.txt

CMD ["sh", "run.sh"]
