apache2:
   pkg:
     - installed
   service:
     - running
     - require:
       - pkg: apache2

screen:
  pkg:
    - installed

shorewall:
  pkg:
    - installed

bind9:
  pkg:
    - installed
  service:
    - running
    - require:
      - pkg: bind9

squid:
  pkg:
    - installed
  service:
    - running
    - require:
      - pkg: squid

vnstat:
  pkg:
    - installed

uptimed:
  pkg:
    - installed
  service:
    - running
    - require:
      - pkg: uptimed

mysql-server:
  pkg:
    - installed
  service:
    - running
    - require:
      - pkg: mysql-server

manpages:
  pkg:
    - installed
