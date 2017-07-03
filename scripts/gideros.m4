FROM rgomes/mate-standard:TAG
include(modules/debian/desktop/wine/build.m4)
include(modules/debian/desktop/gideros/build.m4)
###TODO: include(modules/debian/desktop/android-studio/build.m4)
#---------------------------------------------------------
EXPOSE 22
    
VOLUME /home/x2go/Documents
VOLUME /home/x2go/Downloads
VOLUME /home/x2go/Media
#---------------------------------------------------------
CMD [ "/bin/bash", "-c", "/root/entrypoint.sh" ]
#---------------------------------------------------------
