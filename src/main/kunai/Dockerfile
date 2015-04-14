FROM dockerfile/ubuntu

RUN apt-get update
RUN apt-get install -y python-requests python-openssl python-setuptools python-pip python-leveldb python-jinja2
#RUN pip install kunai==0.9
RUN  git clone https://github.com/naparuba/kunai.git
RUN cd kunai && python setup.py install


EXPOSE 6768