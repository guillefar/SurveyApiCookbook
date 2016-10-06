

surveyapp_setup 'surveyapp' do  
  nodejs_version node['opsworks-surveyapp']['nodejs']['version']
  nodejs_checksum node['opsworks-surveyapp']['nodejs']['checksum']
end  
