package 'tree' do
  action :install
end

package 'emacs'

package 'ntp'

package 'git' do
  action :install
end

file '/etc/motd' do
  content 'This server is the property of Technotrainer'
  action :create
  owner 'root'
  group 'root'
end

service 'ntpd' do
  action [ :enable, :start]
end
