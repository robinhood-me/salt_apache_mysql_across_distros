{% from "apache2/map.jinja" import apache2_set with context %}

apache_vhosts:
  file.managed:
    - name: {{ apache2_set.vhosts_loc }}
    - source: salt://apache2/files/default_vhosts.conf
    - makedirs: True
    - require:
      - pkg: {{ apache2_set.server }}
