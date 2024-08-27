FROM python:3.12.5-slim

COPY . /app
WORKDIR /app 

RUN python3 -m venv /otp/venv

RUN /otp/venv/bin/pip install pip --upgrade && \
    /otp/venv/bin/pip install -r requirements.txt && \
    chmod +x entrypoint.sh

CMD ["/app/entrypoint.sh"]





