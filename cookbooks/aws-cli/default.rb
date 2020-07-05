package 'unzip' do
end

execute 'curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip"' do
end

execute 'unzip /tmp/awscliv2.zip -d /tmp' do
end

execute '/tmp/aws/install' do
end
