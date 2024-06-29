FROM python:3.8-slim-buster
WORKDIR /app

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/searchingshiv/NTEDITED
WORKDIR NTEDITED
EXPOSE 3000

# COPY . .

CMD pip3 install -r requirements.txt && python3 main.py
