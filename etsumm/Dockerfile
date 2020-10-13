FROM ubuntu

ARG BRANCH=master
ENV VENV=/opt/venv/etsumm

RUN git clone -b ${BRANCH} https://github.com/esmf-org/esmf-test-scripts.git
WORKDIR esmf-test-scripts/etsumm
RUN python3 -m venv ${VENV}
