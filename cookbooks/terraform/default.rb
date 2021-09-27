if !File.exist?("/home/takehito/.tfenv") then
  execute "git clone https://github.com/tfutils/tfenv.git ~/.tfenv"
end

path = File.join(ENV["HOME"], ".local", "bin")
terragrunt_full_path = File.join(path, "terragrunt")
if !File.exist?(terragrunt_full_path) then 
  if !File.exist?("/home/takehito/.local/bin") then
    directory path
  end
  http_request terragrunt_full_path do
    url "https://github.com/gruntwork-io/terragrunt/releases/download/v0.32.4/terragrunt_linux_amd64"
    mode "755"
  end
end
