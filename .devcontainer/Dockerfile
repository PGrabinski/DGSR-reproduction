FROM python:3.6.15-bullseye

RUN apt-get -y update && apt-get -y install git

RUN pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu

RUN pip install  dgl -f https://data.dgl.ai/wheels/repo.html

RUN pip install  dglgo -f https://data.dgl.ai/wheels-test/repo.html