FROM python:3.10 as base

# OPTION 1: copying the cache from the root image
#COPY --from=python-base-image /root/.cache/pip /root/.cache/pip
# OPTION 2: copying the packages directly
COPY --from=python-base-image /opt/venv/lib/python3.10/site-packages/ /usr/local/lib/python3.10/site-packages/
COPY --from=other-base-image /opt/venv/lib/python3.10/site-packages/ /usr/local/lib/python3.10/site-packages/

#COPY --from=python-base-image /opt/venv/ /opt/venv
#RUN mv -i /opt/venv/lib/python3.10/site-packages/* /usr/local/lib/python3.10/site-packages/
# COPY --from=python-base-image /requirements.txt .

# RUN pip install -r requirements.txt
RUN pip install --upgrade pip
CMD ["pip", "list"]
