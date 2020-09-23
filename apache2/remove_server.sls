{% from "apache2/map.jinja" import apache2_set with context %}

apache2_server_remove:
  pkg.removed:
    - name: {{ apache2_set.server }} 
