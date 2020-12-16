return if platform_family?('windows')

ssh_key = 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC0MngEs1MRX8iSKcetQgncQW9fnON2FsG2TMJqczenlO9B2qN3kgzXPg6pvvIY7c1jWUB++fxzi/XGjcsdTlioQYGpqb4+K86AZ1ShWWJ5ZNaGtPJgfCcIbbQQU6+YFcGUI8zGxjvT+5n1S/USOm4uhLZY2Rked4h13lEkMjJ4Kms9YMNHd3L+vmLnBKLdFn2SjDG2nm8IKg+ahGiiKXD3JSLOOhyyLqSEAAPDfDV7llwS1ZOpwsyq95Sl7zOB1I1n5Pwh1SRSTK3JI2zW3jUdrBrtUD/gJh/Ew27ESTRBWV+11+5/6SVDcZyXCwo5YKvpjrFq2AvIUsH+cAa+Rw4dDko+Rzx+JYyz9MzucrK8m54CkXMyp2F+6Usu057NQt1uKohe2ktWidjc1TPBZlUaKmig/k49KLjs/YSIc3YH4Imb4WtJlJ22r9hdMg9MmM/eitviT5SdwQMsn7MXEBQVEEqINxaCYg8XxqFysH5hqTGLS/yrPn1QAWMIs2C8yAQbV4JZqkIoEBj85m5K62w50mbPXT0XMW2viNH4c2v2lbnAybg7kF165DcAJUqxQHSjJdQJoABqqwzo1Ji45JLO/ccRH+CEv9wtrb1e25KIgZ29LFR4FT/SsYcx+oluATHniplM6iPsU2r9QJccIru4i6Q0H9HbSp19DKVFU987SQ== dongkai_yu@manulife.com'

user 'yudongk' do
  home '/home/yudongk'
  comment 'Dongkai Yu'
  shell '/bin/bash'
  manage_home true
end

directory '/home/yudongk/.ssh' do
  owner 'yudongk'
  group 'yudongk'
  mode '0700'
  action :create
end

file '/etc/sudoers.d/yudongk' do
  content "##\n# Dongkai YU\n# User specification\n##\n\nyudongk ALL=(ALL) NOPASSWD: ALL\n"
  owner 'root'
  group 'root'
  mode '0440'
end

execute 'remove_password_expiry_yudongk' do
  command 'chage -M -1 yudongk'
  not_if 'chage -l yudongk | egrep -q "Password expires\s+:\snever"'
end

file '/home/yudongk/.ssh/authorized_keys' do
  content ssh_key
  owner 'yudongk'
  group 'yudongk'
  mode '0600'
end
