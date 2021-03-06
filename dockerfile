FROM python:3.8-slim
COPY . /work
WORKDIR /work

EXPOSE 5000

RUN apt-get update
RUN pip install --no-cache-dir -r requirements.txt

CMD jupyter notebook --no-browser --port 5000
