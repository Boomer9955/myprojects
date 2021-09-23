FROM python:3.8.3-alpine

# set work directory
WORKDIR /usr/src/app
# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install psycopg2 dependencies
RUN apk update \
    && apk add postgresql-dev gcc python3-dev musl-dev

# install dependencies
RUN pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

#entrypoint
COPY entrypoint.sh .
RUN chmod +x /usr/src/app/entrypoint.sh

COPY . .
CMD python3 proger/manage.py migrate

# run entrypoint.sh
ENTRYPOINT ["/usr/src/app/entrypoint.sh"]
