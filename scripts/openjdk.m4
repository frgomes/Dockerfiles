FROM rgomes/console:TAG
include(modules/debian/console/openjdk/build.m4)
#---------------------------------------------------------
CMD [ "/bin/bash" ]
#---------------------------------------------------------
