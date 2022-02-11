FROM dw-base:latest

ENV TAP_COMMAND tap-jira

USER root

ADD ./tap-jira tap-jira

RUN python -m venv tap-venv \
    && tap-venv/bin/pip install -e "./tap-jira"

USER $MY_USER
