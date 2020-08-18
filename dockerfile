FROM python:3.8-slim
COPY . /work
WORKDIR /work

EXPOSE 8888

RUN apt-get update
RUN pip install --no-cache-dir -r requirements.txt

CMD jupyter notebook --no-browser
