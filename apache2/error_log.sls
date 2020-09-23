{% from "apache2/map.jinja" import apache2_set with context %}

include:
  - apache2.restart

apache2_server_error_log:
  file.managed:
    - name: {{ apache2_set.server_error }} 
    - source: {{ apache2_set.server_error_source }}
    - makedirs: True
    - require:
      - pkg: {{ apache2_set.server }}
