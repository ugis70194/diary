FROM python:3.9.13-buster

# pip version >= 20
ENV PYTHONDONTWRITEBYTECODE=1 \
  PYTHONUNBUFFERED=1 \
  PYTHONUTF8=1 \
  PIP_NO_CACHE_DIR=off \
  PIP_DISABLE_PIP_VERSION_CHECK=on

RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install --requirement /code/requirements.txt
COPY . /code/