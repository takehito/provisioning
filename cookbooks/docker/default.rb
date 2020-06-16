package 'apt-transport-https' do
end

package 'ca-certificates' do
end

package 'curl' do
end

package 'gnupg-agent' do
end

package 'software-properties-common' do
end

execute 'curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -' do
end

execute 'apt-key fingerprint 0EBFCD88' do
end

execute 'add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"' do
end

package 'docker-ce' do
end

package 'docker-ce-cli' do
end

package 'containerd.io' do
end
