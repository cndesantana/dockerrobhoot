FROM puckel/docker-airflow:1.10.6

USER root
WORKDIR /

# Python packages

# Add postgresql libraries to apt-get
RUN apt-get update && apt-get install -y wget gnupg2
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main' >> /etc/apt/sources.list.d/pgdg.list
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -

RUN apt-get update && apt-get install -y libsasl2-modules libsasl2-dev python3-tk postgresql-client-common postgresql-client-11 moreutils
RUN pip install -U pip && \
    pip install \
        pyasn1-modules==0.2.1 \
        PyMySQL==0.8.0 \
        pandas==0.25.1 \
        thrift==0.11.0 \
        google-api-python-client google-auth google-auth-oauthlib google-auth-httplib2 oauth2client google-ads \
        flask_bcrypt \
        tenacity \
        pystan \
        fbprophet \
        ipdb \
        tableauserverclient \
        Flask==1.1.0 \
        jinja2==2.10.1 \
        werkzeug==0.15.5 \
        xlrd 

USER airflow
WORKDIR /usr/local/airflow
