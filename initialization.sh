#!/bin/bash
#########################################################################
# File Name: initialization.sh
# Author: mark www.linuxea.com
# Email: usertzc@gmail.com
# Version:
# Created Time: 2016年12月26日 星期一 14时03分46秒
#########################################################################
SPA=/data/docker/svn
if [ "$(ls -A $SPA)" ];then
  svnserver -d -r /data/docker/svn
  tail -f $SPA/passwd
else
  mv /tmp/* $SPA/ && svnserver -d -r /data/docker/svn && tail -f $SPA/passwd
fi
