#!/bin/bash
SHELL=/bin/sh
PATH=/sbin:/usr/sbin:/usr/bin:/bin

echo ‘atualizando o CentOS…’
yum update -y

echo ‘instalando utilitarios…’
yum install yum* wget nano perl setuptool ntsysv system-config-firewall system-config-network-tui* -y

echo ‘instalando Requisitos para instalar Cpanel…’
yum install -y gcc gcc-c++ gettext strace automake strace64 gdb bison libtool tar zip perl screen tcp_wrappers-devel wget

echo "CPANEL=11.56" > /etc/cpupdate.conf

echo ‘instalando Cpanel…’
cd /home && wget http://layer1.cpanel.net/latest && sh latest

echo ‘Cpanel instalado com Sucesso…’