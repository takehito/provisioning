version = '1.17'
execute "curl -L https://golang.org/dl/go#{version}.linux-amd64.tar.gz -o /tmp/go#{version}.linux-amd64.tar.gz"
execute "tar -xvf /tmp/go#{version}.linux-amd64.tar.gz -C /usr/local"
