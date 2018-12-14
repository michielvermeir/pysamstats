FROM python:2.7

COPY . /src
WORKDIR /src

RUN pip --version && \
    pip install --verbose --isolated --no-cache-dir --upgrade . 2>&1 | tee pip-log.txt
# RUN  rm -r /src

CMD ["pysamstats", "--help"]