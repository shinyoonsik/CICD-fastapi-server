FROM python:3.10

WORKDIR /app/

COPY ./ /app/

RUN pip install -r requirements.txt

ENV ENV=UVICORN

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]