{% from "apache2/map.jinja" import apache2_set with context %}

include:
  - apache2.restart

apache2_server_webpage:
  file.managed:
    - name: /var/www/html/index.html
    - source: salt://apache2/files/index.html
    - require:
      - pkg: {{ apache2_set.server }}

