FROM continuumio/miniconda3

RUN apt-get update \
    && apt-get install -y curl ffmpeg libtbb-dev \
    && rm -rf /var/cache/apt/* \
    && apt-get autoremove -y \
    && apt-get clean

RUN conda install python=3.6 -y \
    && conda install -c conda-forge -y \
    mkl \
    numpy \
    matplotlib \
    scikit-learn \
    scipy \
    autopep8 \
    && conda clean --all -y

COPY *.sh /
RUN chmod +x /*.sh
RUN /install_linux.sh

ENTRYPOINT [ "/exec.sh" ]
CMD [ "/shared" ]