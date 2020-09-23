{% from "apache2/map.jinja" import apache2_set with context %}

include:
  - apache2.restart

apache2_server_config:
  file.managed:
    - name: {{ apache2_set.server_conf }} 
    - source: {{ apache2_set.server_conf_source }}
    - require:
      - pkg: {{ apache2_set.server }}
