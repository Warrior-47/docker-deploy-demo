FROM python:3.10.10-alpine3.17

ENV FLASK_APP=app \
    FLASK_DEBUG=true

RUN pip install pipenv

copy /app/Pipfile .

RUN pipenv install --system --deploy

USER me

COPY /app .

ENTRYPOINT ["python"]

CMD ["app.py"]
