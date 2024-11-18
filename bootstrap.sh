#!/bin/bash

#useradd -s /bin/bash -d /opt/stack -m stack
#chmod +x /opt/stack
#echo "stack ALL=(ALL) NOPASSWD: ALL" | tee /etc/sudoers.d/stack

#sudo -u stack -i
git clone https://opendev.org/openstack/devstack
cd devstack

cat <<EOF | sudo tee local.conf
[[local|localrc]]
ADMIN_PASSWORD=secret
DATABASE_PASSWORD=\$ADMIN_PASSWORD
RABBIT_PASSWORD=\$ADMIN_PASSWORD
SERVICE_PASSWORD=\$ADMIN_PASSWORD
EOF

chown -R vagrant ../devstack
chgrp -R vagrant ../devstack

#./stack.sh