FROM python:3.10-slim
WORKDIR /app

COPY python-service ./python-service
COPY node-backend ./node-backend
COPY supervisord.conf /etc/supervisord.conf
COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN apt-get update && apt-get install -y nodejs npm supervisor && \
    pip install flask yfinance matplotlib pandas gunicorn && \
    chmod +x /docker-entrypoint.sh

CMD ["/docker-entrypoint.sh"]
