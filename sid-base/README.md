Container which aims to serve as a base for other stacked containers.

* Debian Sid
* File compression: zip, unzip, gzip, bzip2, xz-tools
* Networking: wget, curl and net-tools
* Text editors: nano, vim, zile
* System administration: sudo


### Usage

Create a function like shown below:

    function docker_sid_base {
      docker run -it --rm rgomes/sid-base
    }

and then call it:

    docker_sid_base
