base:
  'salt':
    - hostname
  'minion1':
    - mysql.client
  'minion* and G@os:CentOS':
    - mysql
  'minion* and G@os:RedHat':
    - mysql
