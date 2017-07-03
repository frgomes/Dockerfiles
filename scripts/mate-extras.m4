FROM rgomes/mate-standard:TAG
include(modules/debian/desktop/mate/extras.m4)
#---------------------------------------------------------
EXPOSE 22
    
VOLUME /home/x2go/Documents
VOLUME /home/x2go/Downloads
VOLUME /home/x2go/Media
#---------------------------------------------------------
CMD [ "/bin/bash", "-c", "/root/entrypoint.sh" ]
#---------------------------------------------------------
