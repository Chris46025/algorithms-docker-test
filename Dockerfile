FROM python:2.7
RUN easy_install pip
ENV PYTHONUNBUFFERED 1
RUN pip install pygments
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/