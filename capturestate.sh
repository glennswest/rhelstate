mkdir -p state/$1
rpm -qa --qf "%{NAME}\n" | sort > state/$1/packages
tar -czf state/$1/network.taz /etc/sysconfig/network-scripts
tar -czf state/$1/iscsi.taz /etc/iscsi
tar -czf state/$1/root.taz  /root
tar -czf state/$1/etc.taz /etc
tar -czf state/$1/ssh.taz /root/.ssh
