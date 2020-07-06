# frozen_string_literal: true
execute 'curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -'

execute 'echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list'

package 'yarn'
