FROM python:3.9 as dev

RUN pip install poetry==1.0.0
ENV PATH="/root/.poetry/bin:${PATH}"

WORKDIR /app/

ADD . /app
RUN poetry install
CMD poetry run python /app/web_app.py
