ENV PG_APP_HOME="/etc/docker-postgresql" \
    PG_VERSION="9.6" \
    PG_USER="postgres" \
    PG_HOME="/var/lib/postgresql" \
    PG_RUNDIR="/run/postgresql" \
    PG_LOGDIR="/var/log/postgresql" \
    PG_CERTDIR="/etc/postgresql/certs"

ENV PG_BINDIR="/usr/lib/postgresql/${PG_VERSION}/bin" \
    PG_DATADIR="${PG_HOME}/${PG_VERSION}/main"

RUN apt-get install -y acl postgresql-${PG_VERSION} postgresql-client-${PG_VERSION} postgresql-contrib-${PG_VERSION} \
 && ln -sf ${PG_DATADIR}/postgresql.conf /etc/postgresql/${PG_VERSION}/main/postgresql.conf \
 && ln -sf ${PG_DATADIR}/pg_hba.conf /etc/postgresql/${PG_VERSION}/main/pg_hba.conf \
 && ln -sf ${PG_DATADIR}/pg_ident.conf /etc/postgresql/${PG_VERSION}/main/pg_ident.conf \
 && rm -rf ${PG_HOME} \
 && rm -rf /var/lib/apt/lists/*

COPY debian/console/postgresql/entrypoint.sh /root/entrypoint.sh
RUN chmod 755 /root/entrypoint.sh
