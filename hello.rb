file 'hello.txt' do
  content 'hello world!'
  mode '0644'
  owner 'root'
  group 'root'
  action :create
end
