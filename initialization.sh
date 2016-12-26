#!/bin/bash
#########################################################################
# File Name: initialization.sh
# Author: mark www.linuxea.com
# Email: usertzc@gmail.com
# Version:
# Created Time: 2016年12月26日 星期一 14时03分46秒
#########################################################################
SPA=/data/docker/svn/conf
if [ "$(ls -A $SPA)" ];then
  /usr/bin/svnserve -d -r /data/docker/svn
  tail -f /etc/passwd
else
  cp -ra /tmp/* $SPA/ &&  /usr/bin/svnserve -d -r /data/docker/svn && tail -f /etc/passwd
fi
