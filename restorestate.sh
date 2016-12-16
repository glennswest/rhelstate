LIST="$( cat /backup/installed-software.log )"
for s in $LIST; do yum -y reinstall $s; done
