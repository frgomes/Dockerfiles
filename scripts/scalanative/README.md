Scala Native development environment

 * Debian Stretch [modules/debian/stretch.m4](http://github.com/frgomes/Dockerfiles/blob/master/modules/debian/stretch.m4)
 * Console tools: [modules/debian/console/build.m4](http://github.com/frgomes/Dockerfiles/blob/master/modules/debian/console/build.m4)
 * JDK8:          [modules/debian/openjdk/build.m4](http://github.com/frgomes/Dockerfiles/blob/master/modules/debian/openjdk/build.m4)
 * Clang:         [modules/debian/clang/build.m4](http://github.com/frgomes/Dockerfiles/blob/master/modules/debian/clang/build.m4)
 * Libs and SBT:  [modules/debian/scalanative/build.m4](http://github.com/frgomes/Dockerfiles/blob/master/modules/debian/scalanative/build.m4)

Start the instance like this:

    $ docker run -it rgomes/scalanative
