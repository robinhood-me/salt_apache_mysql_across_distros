{% from "apache2/map.jinja" import apache2_set with context %}

restart_apache2_server:
  module.wait:
    - name: service.restart
    - m_name: {{ apache2_set.service }}
    - onchanges:
      - apache2_server_config
