FROM rgomes/console:TAG
include(modules/debian/console/openjre/build.m4)
#---------------------------------------------------------
CMD [ "/bin/bash" ]
#---------------------------------------------------------
