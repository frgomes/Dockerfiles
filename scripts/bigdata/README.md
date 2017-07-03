Full set of tools for BigData and Machine Learning

 * Debian Stretch [modules/debian/stretch.m4](http://github.com/frgomes/Dockerfiles/blob/master/modules/debian/stretch.m4)
 * Console tools: [modules/debian/console/build.m4](http://github.com/frgomes/Dockerfiles/blob/master/modules/debian/console/build.m4)
 * Apache Spark
 * Torch7
 * Scala development stack
 * Jupyter
 * ENSIME Emacs editor: http://github.com/frgomes/.emacs.d
 * bin utilities: http://github.com/frgomes/debian-bin
 * script utilities: http://github.com/frgomes/debian-scripts

Start the instance like this:

    $ docker run -d rgomes/bigdata
    # EXAMPLE of connection via x2go client:
    $ x2goclient x2go@172.17.0.2
