## Dockerfiles from M4 Macro Processor

This is an innovative approach for Dockerfiles which aims to tackle two difficulties:

1. In conventional Dockerfiles maintained by hand (and even by several tools) you cannot easily replace one
set of tools by another. You cannot replace the base operating system distribution easily, for example, 
since the operating system is the very first change set which contributes to an image.

2. In conventional Dockerfiles, you are limited to the execution of the build process itself, not being
able to perform operations before the build starts and/or after the build ends. A typical example happens
when you need to download a file or a repository in order to share it with the build process; you are
not interested on downloading it everytime, but only a handful of times whilst you are testing, depending
on circumstances.

In order to address these difficulties, the following solution was adopted:

1. A Dockerfile is produced by a macro processor.

2. A build script looks for a pre-build script, executes it, then it produces the Dockerfile and execute
it and finally it looks for a post-build script and execute it.

In particular, the input file for the macro processor is intentionally brief, contaning only high level
calls for other input files which are included by the macro processor. For example:

```m4
include(modules/debian/stretch.m4)
include(modules/debian/console/build.m4)
#---------------------------------------------------------
CMD [ "/bin/bash" ]
#---------------------------------------------------------
```

In this case in particular, the file ``modules/debian/stretch.m4`` contains the following code:

```m4
#---------------------------------------------------------
FROM debian:stretch
MAINTAINER Richard Gomes - http://github.com/frgomes
ENV DEBIAN_NAME="stretch"
ENV DEBIAN_FRONTEND="noninteractive"
ENV TERM="xterm" LC_ALL="C.UTF-8"
ENV USER="root" HOME="/root"
#---------------------------------------------------------
RUN apt-get update
```

and file ``modules/debian/console/build.m4`` contains the code:

```m4
RUN apt-get -y update \
 && apt-get -y install apt-file apt-transport-https apt-utils \
 && apt-get -y install sudo lsb-release \
                       tree less nano vim zile \
                       zip unzip gzip bzip2 xz-utils bsdtar \
                       wget curl net-tools \
                       gnupg2 ca-certificates \
 && apt-get -y install locales \
 && dpkg-reconfigure locales && locale-gen C.UTF-8 \
 && /usr/sbin/update-locale LANG=C.UTF-8 \
 && apt-get -y clean \
 && apt-file update
```

This way, the macro processor generates a Dockerfile which is the contatenation of the two files.

This is a simple way to maintain and compose snippets of a Dockerfile whilst it is also very
flexible since the macro processor allows us to support multiple operating systems and distributions
in a single file.
