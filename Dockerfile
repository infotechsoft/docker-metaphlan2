FROM conda/miniconda2-centos7

ARG BUILD_DATE
ENV METAPHLAN_VERSION=2.7.8

LABEL name="Metaphlan2 ${METAPHLAN_VERSION}" \
	  maintainer="Thomas J. Taylor <thomas@infotechsoft.com>" \
	  build-date="${BUILD_DATE}"

RUN pip --default-timeout=180 install --upgrade pip && \
    conda config --set remote_read_timeout_secs 300 && \
    conda config --add channels defaults && \
    conda config --add channels bioconda && \
    conda update -y conda && \
    conda install -y -c bioconda metaphlan2

VOLUME /data
WORKDIR /data