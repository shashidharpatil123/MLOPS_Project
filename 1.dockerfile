FROM python:3.10
WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

#why host 0.0.0.0 because this will maps with all networking interfaces onlinux host 
#below command evaluates ml model
CMD ["uvicorn", "main.app", "--host", "0.0.0.0", "--port", "8000"]