FROM python:slim

WORKDIR /home/volgpt-post-temp

COPY requirements.txt requirements.txt 
RUN python -m venv venv
RUN venv/bin/pip install -r requirements.txt

COPY volgpt-post-temp.ipynb volgpt-image-jenny-saville.png boot.sh ./ 

RUN chmod a+x boot.sh
ENV PORT 8080

ENTRYPOINT ["./boot.sh"]