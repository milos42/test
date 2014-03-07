#!/bin/bash
user=$1
pass='gempa'
host='localhost'
port='2201'

   expect -c "
   set timeout 5;
   spawn ssh -p ${port} -q ${user}@${host};
   expect "ssword:" { send \"${pass}\r\" };
   expect "${user}@" { send \"sudo su\r\" };
   expect "assword"  { send \"${pass}\r\" };
   interact;"

