FROM ubuntu

ARG BRANCH=master
ENV VENV=/opt/venv/etsumm

RUN apt-get -y update && apt-get install -y git tree vim wget python3 python3-pip python3-venv

RUN git clone -b ${BRANCH} https://github.com/esmf-org/esmf-test-scripts.git
WORKDIR esmf-test-scripts/etsumm
RUN python3 -m pip install --upgrade pip
RUN python3 -m venv ${VENV}
ENV PATH="$VENV/bin:$PATH"
RUN pip install -r requirements.txt
ENV PYTHONPATH=${PYTHONPATH}:./src

ENTRYPOINT ["python3", "src/etsumm/etcli.py"]
