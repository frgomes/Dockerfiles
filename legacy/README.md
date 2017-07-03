##### rgomes/jessie-torch7

Tools for Big Data and Machine Learning

* Debian Jessie
* Jupyter
* iTorch kernel


##### rgomes/stretch-base

Container which aims to serve as a base for other stacked containers.

* Debian Stretch
* File compression: zip, unzip, gzip, bzip2, xz-tools
* Networking: wget, curl and net-tools
* Text editors: nano, vim, zile
* System administration: sudo


##### rgomes/sid-base

Container which aims to serve as a base for other stacked containers.

* Debian Sid
* File compression: zip, unzip, gzip, bzip2, xz-tools
* Networking: wget, curl and net-tools
* Text editors: nano, vim, zile
* System administration: sudo


##### rgomes/sid-kde-minimal

Minimalist KDE Desktop

* FROM rgomes/sid-base
* KDE5 Plasma Desktop (minimal set of applications)
* System administration: systemsettings
* Networking: TurboVNC


##### rgomes/sid-kde-standard

Standard KDE Desktop

* FROM rgomes/sid-kde-minimal
* KDE5 Plasma Desktop (standard set of applications)


##### rgomes/sid-kde-full

Full KDE Desktop

* FROM rgomes/sid-kde-standard
* KDE5 Plasma Desktop (complete compilation for end users)


##### rgomes/sid-kdenlive

Tools for video editing

* FROM rgomes/sid-kde-minimal
* kdenlive, vlc, dvdauthor, genisoimage
