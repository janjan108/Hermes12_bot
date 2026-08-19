FROM nousresearch/hermes-agent:latest

ENV PYTHONUNBUFFERED=1

COPY start.sh .
RUN chmod +x start.sh
CMD ["./start.sh"]
