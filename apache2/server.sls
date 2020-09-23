{% from "apache2/map.jinja" import apache2_set with context %}

{{ apache2_set.server }}:
  pkg.installed:
    - name: {{ apache2_set.server }} 
  service.running:
    - enable: True
    - require:
      - pkg: {{ apache2_set.server }}
      - file: {{ apache2_set.server_error }}
      - file: {{ apache2_set.server_access }}
      - file: {{ apache2_set.server_conf }}

