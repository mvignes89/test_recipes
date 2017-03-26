node[:deploy].each do |application, deploy|
	default[:deploy][application][:deploy_to] = "/data/#{application}"
end