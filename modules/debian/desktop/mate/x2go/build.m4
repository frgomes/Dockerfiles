RUN echo "deb http://packages.x2go.org/debian $(lsb_release --codename --short) main" > /etc/apt/sources.list.d/x2go.list \
 && apt-get update \
 && apt-get install -y --allow-unauthenticated x2goserver x2goserver-xsession cups-x2go x2goserver-printing

RUN adduser --disabled-password --gecos "" x2go \
 && adduser x2go sudo

ADD modules/debian/desktop/mate/x2go/entrypoint.sh /root/entrypoint.sh
