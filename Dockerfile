FROM conda/miniconda2

RUN pip --default-timeout=180 install --upgrade pip && \
    conda config --set remote_read_timeout_secs 300 && \
    conda config --add channels defaults && \
    conda config --add channels bioconda && \
    conda update -y conda && \
    conda install -y -c bioconda metaphlan2