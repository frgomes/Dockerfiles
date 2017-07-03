FROM rgomes/console:TAG
include(modules/debian/console/postgresql/build.m4)
#---------------------------------------------------------
EXPOSE 5432/tcp

VOLUME ${PG_HOME}
VOLUME ${PG_RUNDIR}
    
WORKDIR ${PG_HOME}
#---------------------------------------------------------
CMD [ "/bin/bash", "-c", "/root/entrypoint.sh" ]
#---------------------------------------------------------
