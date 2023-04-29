FROM python:3.10.10-alpine3.17

ENV FLASK_APP=app \
    FLASK_DEBUG=true

RUN pip install pipenv

COPY /app .

RUN pipenv install --system --deploy

ENTRYPOINT ["python"]
CMD ['app.py']