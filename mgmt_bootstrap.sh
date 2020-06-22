#!/bin/bash

#This build the config string
config_string='install_security_gw=false&install_ppak=true&gateway_cluster_member=false&install_security_managment=true&install_mgmt_primary=true&install_mgmt_secondary=false&download_info=true&hostname=MikeNet-cp-gw&mgmt_gui_clients_radio=any&mgmt_admin_radio=gaia_admin'

clish -c 'set user admin shell /bin/bash' -s

config_system.orig -s $config_string

#For future enhancements
#autoprov_cfg add controller Azure -cn "Azure-Connect" -sb $msft_subscription -en AzureCloud -at $msft_tenantid -aci $msft_clientid -acs $client_secret

reboot