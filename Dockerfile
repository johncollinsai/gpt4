FROM python:slim

WORKDIR /home/gpt4

COPY requirements.txt requirements.txt 
RUN python -m venv venv
RUN venv/bin/pip install -r requirements.txt

COPY gpt4.ipynb gpt4-image.png gpt4-0.png gpt4-1.png gpt4-2.png gpt4-3.png gpt4-4.png gpt4-5.png gpt4-6.png boot.sh ./ 

RUN chmod a+x boot.sh
ENV PORT 8080

ENTRYPOINT ["./boot.sh"]