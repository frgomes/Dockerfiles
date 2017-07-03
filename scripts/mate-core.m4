FROM rgomes/console:TAG
include(modules/debian/console/openssh/build.m4)
include(modules/debian/desktop/mate/core.m4)
include(modules/debian/desktop/mate/firefox/build.m4)
include(modules/debian/desktop/mate/x2go/build.m4)
#---------------------------------------------------------
EXPOSE 22
    
VOLUME /home/x2go/Documents
VOLUME /home/x2go/Downloads
VOLUME /home/x2go/Media
#---------------------------------------------------------
CMD [ "/bin/bash", "-c", "/root/entrypoint.sh" ]
#---------------------------------------------------------
