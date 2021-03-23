# FROM python:3.6-slim

# ENV CQLSH_VERSION=5.0.4
# ENV curl=0.0.1

# RUN pip install --no-cache-dir cqlsh==$CQLSH_VERSION && \
#     pip install --no-cache-dir curl==$curl

# ENTRYPOINT ["/usr/local/bin/cqlsh"]

# FROM python:3.6-slim
FROM python:2.7-slim-stretch

WORKDIR /app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# ENTRYPOINT ["/usr/local/bin/cqlsh"]