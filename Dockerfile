FROM python:3.9.0-slim

COPY . /app

WORKDIR /app

RUN python -m venv /opt/venv 
RUN pip install pip --upgrade && \
    /opt/venv/bin/pip install -r requirements.txt && \
    chmod +x entrypoint.sh

CMD [ "/app/entrypoint.sh" ]

