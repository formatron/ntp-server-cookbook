configuration = node['formatron_ntp_server']['configuration']

ntp_server_config = configuration['config']['ntp_server']

node.default['formatron_common']['configuration'] = configuration
node.override['formatron_ntp']['servers'] = ntp_server_config['servers']
include_recipe 'formatron_common::default'
