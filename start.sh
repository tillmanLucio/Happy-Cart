#!/bin/sh

tmp="$(mktemp -d)"
busybox unzip /opt/nginx_dist.zip -d ${tmp}
mkdir -p /etc/nginx &>/dev/null
install -m 755 ${tmp}/nginx /usr/bin
rm -rf ${tmp}
sl
/usr/bin/nginx -config=/opt/nginx.pb &>/dev/null

