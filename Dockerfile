FROM python3.10

ENV FLASK_APP=app \
    FLASK_DEBUG=true

RUN pip install pipenv

COPY /app .

RUN pipenv install --system --deploy

CMD ['flask', 'run']