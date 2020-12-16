# default['audit']['reporter'] = 'chef-server-automate'
# default['audit']['fetcher'] = 'chef-server'
# default['audit']['interval']['enabled'] = true
# default['audit']['interval']['time'] = 1

# case node['platform']
# when 'ubuntu'
#   default['audit']['profiles']['mfc_linux_profile'] = {
#       compliance: 'yudongkadm@MFCGD.com/mfc_linux_profile',
#       'version': '0.1.0',
#     }

# when 'redhat'
# when 'windows'
# end

# default['audit']['inspec_gem_source'] = 'https://artifactory.platform.manulife.io/artifactory/api/gems/gems'

# normal['generic_test_ydk']['enable'] = true
