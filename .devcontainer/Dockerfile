FROM python:3.6.15-bullseye

RUN apt-get -y update && apt-get -y install git

RUN pip install torch==1.7.1+cpu torchvision==0.8.2+cpu torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html

RUN pip install  dgl -f https://data.dgl.ai/wheels/repo.html

RUN pip install  dglgo -f https://data.dgl.ai/wheels-test/repo.html