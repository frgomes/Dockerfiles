RUN apt-get install -y openssh-server pwgen \
 && mkdir -p /var/run/sshd \
 && sed -ir 's/UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g' /etc/ssh/sshd_config \
 && sed -ir 's/UsePAM.*/UsePAM no/g' /etc/ssh/sshd_config \
 && sed -ir 's/PermitRootLogin.*/PermitRootLogin yes/g' /etc/ssh/sshd_config \
 && sed -ir 's/\#PasswordAuthentication/PasswordAuthentication/g' /etc/ssh/sshd_config

RUN PASS=$(pwgen -s 12 1) && echo "root:$PASS" | chpasswd
