
FROM redhat/ubi8

COPY app.py  .

COPY test.py .

RUN yum install -y python3 && \
    python3 -m ensurepip && \
    pip3 install --upgrade pip

RUN pip3 install flask pytest


ENTRYPOINT ["pytest" , "test.py"]
