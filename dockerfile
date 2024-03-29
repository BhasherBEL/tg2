FROM python:3

VOLUME /data

WORKDIR /tg2

COPY requirements.txt .

RUN pip install --no-cache-dir pip && \
    pip install --no-cache-dir -r requirements.txt

COPY main.py .

CMD ["python", "-u", "main.py"]
