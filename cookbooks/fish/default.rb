execute "apt-add-repository -y ppa:fish-shell/release-3" do
end

execute "apt-get update" do
end

package "fish" do
  action :install
end
