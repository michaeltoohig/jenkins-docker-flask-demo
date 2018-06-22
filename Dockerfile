FROM centos:latest
MAINTAINER Michael Toohig

RUN yum update -y
RUN yum install -y epel-release
RUN yum install -y python34 python34-setuptools
RUN easy_install-3.4 pip

ADD . /flask-app
WORKDIR /flask-app
RUN pip3 install -r requirements.txt

EXPOSE 8000

ENTRYPOINT ["python3"]
CMD ["app.py"]
