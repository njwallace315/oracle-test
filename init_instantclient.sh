
  sh -c "echo /instantclient_18_5 > /etc/ld.so.conf.d/oracle-instantclient.conf"
  apt-get update
  apt-get install libaio1