name 'nodejs'
maintainer 'guillefar'
maintainer_email 'guillofar@gmail.com'
license 'Apache 2.0'
description 'Installs/Configures node.js & io.js'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
source_url 'https://github.com/redguide/nodejs' if respond_to?(:source_url)
issues_url 'https://github.com/redguide/nodejs/issues' if respond_to?(:issues_url)
version '2.4.5'

depends 'yum-epel'
depends 'build-essential'
depends 'ark'
depends 'apt', '>= 2.9.1'
depends 'homebrew'

%w(debian ubuntu centos redhat scientific oracle amazon smartos mac_os_x).each do |os|
  supports os
end


node_app_setup 'myapp' do  
  nodejs_version '5.10.1'
  nodejs_checksum '...'
end


node_app_deploy 'myapp' do # service_name defaults to this name  
  ssh_key '...'
  dir '/opt/myapp'
  git_repository '<repository>'
  git_revision 'master'
  run_cmd 'npm start'
  run_environment(
    'NODE_ENV' => 'dev',
    'PORT' => 8080
  )
end  