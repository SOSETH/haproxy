#!/bin/sh

# Managed by Ansible. Do not edit!

cd /etc/haproxy/conf.d

rm ../haproxy.cfg
touch ../haproxy.cfg

for i in * ; do
	echo >> ../haproxy.cfg
	echo "# $i:" >> ../haproxy.cfg
	cat "$i" >> ../haproxy.cfg
done
