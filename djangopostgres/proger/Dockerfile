#FROM python:3.8.3-alpine
FROM python:3.6-slim

# set work directory
#WORKDIR /usr/src/app
WORKDIR $PROJECT_ROOT
# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV PROJECT_ROOT /app

# install psycopg2 dependencies
#RUN apk update \
#    && apk add postgresql-dev gcc python3-dev musl-dev

# install dependencies
RUN pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt


COPY . .
CMD python manage.py runserver 0.0.0.0:8010

#docker-compose
# run entrypoint.sh
#entrypoint
#COPY entrypoint.sh .
#RUN chmod 777 /usr/src/app/entrypoint.sh
#ENTRYPOINT ["/usr/src/app/entrypoint.sh"]
