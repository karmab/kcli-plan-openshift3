{% if registry == 'registry.redhat.io' %}
{% if config_rhnuser is not defined %}
echo Missing rhnuser in kcli conf && exit 1
{% endif %}
{% if config_rhnpassword is not defined %}
echo Missing rhnpassword in kcli conf && exit 1
{% endif %}
{% endif %}
