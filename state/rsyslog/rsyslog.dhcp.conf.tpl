# THIS FILE IS CONTROLLED BY SALTSTACK!
#
# Control logging of the DHCP server

{% if pillar['hosts'][grains['id']]['debug'] %}
# This is for debugging only! Do not enable in production
# Delete logfile after debugging is finished!
#
local7.* /var/log/daemon.log
{% else %}
# In production, any dhcp logging is disabled.
#
local7.* ~
{% endif %}
