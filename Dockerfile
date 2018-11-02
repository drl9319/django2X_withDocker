FROM python:3
RUN mkdir /my_application
WORKDIR /my_application
ADD requirements.txt /my_application/
RUN pip install -r requirements.txt
