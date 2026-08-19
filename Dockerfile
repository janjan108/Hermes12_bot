FROM python:3.13-slim

WORKDIR /app

RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://hermes-agent.nousresearch.com/install.sh | bash

COPY start.sh .
RUN chmod +x start.sh

ENV PYTHONUNBUFFERED=1
ENV PATH="/root/.local/bin:$PATH"

CMD ["./start.sh"]
