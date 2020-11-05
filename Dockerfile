FROM python:2.7

ENV PYTHONPATH /app/venv/bin/python

ENV LISTEN_PORT=5000

EXPOSE 5000

RUN apt-get update -qq && apt-get install -y sqlite3 libsqlite3-dev

RUN mkdir /app

COPY . /app

WORKDIR /app

RUN pip install --upgrade pip

RUN pip install -r ./requirements.txt

CMD ["python", "app.py"]