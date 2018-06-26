FROM python:3.6 
MAINTAINER Michael Toohig

ADD . /flask-app
WORKDIR /flask-app
RUN pip install -r requirements.txt

EXPOSE 8000

ENTRYPOINT ["python"]
CMD ["app.py"]
