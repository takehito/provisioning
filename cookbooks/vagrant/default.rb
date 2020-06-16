http_request '/tmp/vagrant.zip' do
  url 'https://releases.hashicorp.com/vagrant/2.2.9/vagrant_2.2.9_linux_amd64.zip'
  not_if 'test -e /usr/bin/vagrant'
end

execute 'unzip /tmp/vagrant.zip -d /usr/bin' do
  not_if 'test -e /usr/bin/vagrant'
end
