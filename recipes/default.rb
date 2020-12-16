# if node['generic_os_hardening']['umask']
#     puts "Umask set"
#     log 'UMASK Set' do
#         message 'UMASK Set Resource'
#         level :info
#     end
# else
#     puts "Umask disabled"
#     log 'UMASK disabled' do
#         message 'UMASK disabled'
#         level :info
#     end

# end

# ['generic_test_ydk']['enable'] = true
# mapping = data_bag_item('CostCenterBag', 'CostCenterMapping')
# mapping['mapping'].each do |key, value|
#     print key, " is ", value, "\n"
# end

# if mapping['mapping'].has_key?('3365') then
#     print "Value for CostCenter 3365 is: ", mapping['mapping']['3365'], "\n"
# end

# us_costcenters = data_bag_item('CostCenterBag', 'US')
# if vm_costcenter in us_costcenters['costcenters']

puts node['azure']['metadata']['compute']['tags']
puts node['azure']['metadata']['compute']['tagsList']
puts node['azure']['metadata']['compute']['tagsList'][0]['name']
