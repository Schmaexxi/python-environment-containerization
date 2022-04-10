FROM python:3.10 as python-base-image
RUN apt-get update
RUN apt-get install -y --no-install-recommends build-essential gcc libhdf5-serial-dev netcdf-bin libnetcdf-dev

RUN python -m venv /opt/venv

ENV PATH="/opt/venv/bin:$PATH"

COPY requirements_2.txt requirements.txt
RUN pip install --upgrade pip &&  pip install -r requirements.txt
