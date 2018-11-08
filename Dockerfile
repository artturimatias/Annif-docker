FROM python:3

#WORKDIR /usr/src/app
COPY . /usr/src/app/
WORKDIR /usr/src/app/Annif

RUN pip install pipenv && pipenv install 
RUN pipenv run python -m nltk.downloader punkt
RUN pipenv run pip install connexion[swagger-ui]
EXPOSE 5000
