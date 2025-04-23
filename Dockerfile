FROM continuumio/miniconda3:25.1.1-2

ENV PATH /opt/conda/bin:$PATH

RUN conda config --append channels bioconda && \
	conda config --append channels conda-forge && \
	conda config --append channels anaconda && \
	conda install -c bioconda scikit-bio=0.6.3 && \
	conda clean -a -y

CMD ["skbio"]
