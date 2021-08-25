# frozen_string_literal: true
execute 'curl -L https://nodejs.org/dist/v14.17.5/node-v14.17.5-linux-x64.tar.xz -o /tmp/node-v14.17.5-linux-x64.tar.xz'
execute 'tar -xvf /tmp/node-v14.17.5-linux-x64.tar.xz -C /usr/local'
execute 'curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -'

execute 'echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list'

package 'yarn'
