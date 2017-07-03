FROM rgomes/openjdk:TAG
include(modules/debian/console/clang/build.m4)
#---------------------------------------------------------
CMD [ "/bin/bash" ]
#---------------------------------------------------------
