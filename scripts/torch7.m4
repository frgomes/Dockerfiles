FROM rgomes/openjdk:TAG
include(modules/debian/console/python3/build.m4)
include(modules/debian/console/jupyter/build.m4)
include(modules/debian/console/torch7/build.m4)
#---------------------------------------------------------
CMD [ "/bin/bash" ]
#---------------------------------------------------------
