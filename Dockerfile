# install some things
FROM python:3.9
RUN pip install pipenv

# copy over files
WORKDIR /app
COPY . .

# install even more things
RUN pipenv install --system

# run server
CMD gunicorn app:app -b 0.0.0.0:8080
