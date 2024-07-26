FROM python:3.11.5

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt --default-timeout=100 future

COPY . . 

EXPOSE 8501 

CMD [ "streamlit", "run" , "papir_services.py"]

