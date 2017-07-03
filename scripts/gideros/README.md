Development tools for Lua and Gideros Mobile

 * Debian Stretch  [modules/debian/stretch.m4](http://github.com/frgomes/Dockerfiles/blob/master/modules/debian/stretch.m4)
 * Console tools:  [modules/debian/console/build.m4](http://github.com/frgomes/Dockerfiles/blob/master/modules/debian/console/build.m4)
 * OpenSSH server: [modules/debian/openssh/build.m4](http://github.com/frgomes/Dockerfiles/blob/master/modules/debian/openssh/build.m4)
 * MATE standard:  [modules/debian/desktop/mate/standard.m4](http://github.com/frgomes/Dockerfiles/blob/master/modules/debian/desktop/mate/standard.m4)
 * Firefox:        [modules/debian/desktop/firefox/build.m4](http://github.com/frgomes/Dockerfiles/blob/master/modules/debian/desktop/firefox/build.m4)
 * x2go:           [modules/debian/desktop/x2go/build.m4](http://github.com/frgomes/Dockerfiles/blob/master/modules/debian/desktop/x2go/build.m4)
 * Wine:           [modules/debian/desktop/wine/build.m4](http://github.com/frgomes/Dockerfiles/blob/master/modules/debian/desktop/wine/build.m4)
 * Gideros:        [modules/debian/desktop/gideros/build.m4](http://github.com/frgomes/Dockerfiles/blob/master/modules/debian/desktop/gideros/build.m4)

Start the instance like this:

    $ docker run -d rgomes/gideros
    # EXAMPLE of connection via x2go client:
    $ x2goclient x2go@172.17.0.2
