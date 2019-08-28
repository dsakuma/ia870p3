FROM python:3.7-slim

RUN apt-get update \
    && apt-get install -y gcc wget curl

COPY requirements.txt ./

RUN pip install --upgrade pip \
    && pip install -r requirements.txt

#CMD ["jupyter", "--NotebookApp.token=''"]
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
