FROM python:slim

WORKDIR /home/gpt4

COPY requirements.txt requirements.txt 
RUN python -m venv venv
RUN venv/bin/pip install -r requirements.txt

COPY gpt4.ipynb gpt4-image.png boot.sh ./ 

RUN chmod a+x boot.sh
ENV PORT 8080

ENTRYPOINT ["./boot.sh"]