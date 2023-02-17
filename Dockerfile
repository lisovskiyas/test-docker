FROM mongo:4.4.6

RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/


COPY . /usr/src/app/
RUN apt install python3
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 27017


CMD ["python", "app.py"]
