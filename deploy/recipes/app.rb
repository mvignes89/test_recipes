include_recipe 'deploy'

node[:deploy].each do |application, deploy|

  opsworks_deploy_dir do
    path deploy[:deploy_to]
  end

  opsworks_custom_deploy do
    deploy_data deploy
    app application
  end	

end