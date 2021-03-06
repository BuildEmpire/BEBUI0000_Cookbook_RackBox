default['cookbook_rackbox']['ruby']['use_rvm'] = true
default['cookbook_rackbox']['ruby']['versions'] = %w(1.9.3-p385)
default['cookbook_rackbox']['ruby']['global_version'] = '1.9.3-p385'
default["cookbook_rackbox"]["upstream_start_port"]["unicorn"] = 10001
default["cookbook_rackbox"]["upstream_start_port"]["passenger"] = 20001

default["cookbook_rackbox"]["default_config"]["passenger_app"]["rails_sub_dir"] = "current"
default["cookbook_rackbox"]["default_config"]["passenger_app"]["rails_public_dir"] = "public"
default["cookbook_rackbox"]["default_config"]["passenger_app"]["rails_path"] = "/"
default["cookbook_rackbox"]["default_config"]["passenger_app"]["static"] = false
default["cookbook_rackbox"]["default_config"]["passenger_app"]["static_sub_dir"] = "current"
default["cookbook_rackbox"]["default_config"]["passenger_app"]["static_public_dir"] = ""
default["cookbook_rackbox"]["default_config"]["passenger_app"]["static_path"] = "/static"

default["cookbook_rackbox"]["default_config"]["unicorn_app"]["rails_sub_dir"] = "current"
default["cookbook_rackbox"]["default_config"]["unicorn_app"]["rails_public_dir"] = "public"
default["cookbook_rackbox"]["default_config"]["unicorn_app"]["rails_path"] = "/"
default["cookbook_rackbox"]["default_config"]["unicorn_app"]["static"] = false
default["cookbook_rackbox"]["default_config"]["unicorn_app"]["static_sub_dir"] = "current"
default["cookbook_rackbox"]["default_config"]["unicorn_app"]["static_public_dir"] = ""
default["cookbook_rackbox"]["default_config"]["unicorn_app"]["static_path"] = "/static"

default["cookbook_rackbox"]["default_config"]["nginx"]["template_name"] = "nginx_vhost.conf.erb"
default["cookbook_rackbox"]["default_config"]["nginx"]["template_cookbook"] = "cookbook_rackbox"
default["cookbook_rackbox"]["default_config"]["nginx"]["listen_port"] = "80"

default["cookbook_rackbox"]["default_config"]["unicorn"]["listen_port_options"] = { :tcp_nodelay => true, :backlog => 100 }
default["cookbook_rackbox"]["default_config"]["unicorn"]["worker_timeout"] = 60
default["cookbook_rackbox"]["default_config"]["unicorn"]["preload_app"] = false
default["cookbook_rackbox"]["default_config"]["unicorn"]["worker_processes"] = [node[:cpu][:total].to_i * 4, 8].min
default["cookbook_rackbox"]["default_config"]["unicorn"]["before_fork"] = 'sleep 1'

default["cookbook_rackbox"]["default_config"]["unicorn_runit"]["template_name"] = "unicorn"
default["cookbook_rackbox"]["default_config"]["unicorn_runit"]["template_cookbook"] = "cookbook_rackbox"
default["cookbook_rackbox"]["default_config"]["unicorn_runit"]["rack_env"] = "production"

default["cookbook_rackbox"]["default_config"]["passenger_runit"]["template_name"] = "passenger"
default["cookbook_rackbox"]["default_config"]["passenger_runit"]["template_cookbook"] = "cookbook_rackbox"
default["cookbook_rackbox"]["default_config"]["passenger_runit"]["rack_env"] = "production"
default["cookbook_rackbox"]["default_config"]["passenger_runit"]["max_pool_size"] = 6
default["cookbook_rackbox"]["default_config"]["passenger_runit"]["min_instances"] = 1
default["cookbook_rackbox"]["default_config"]["passenger_runit"]["spawn_method"] = "smart-lv2"
default["cookbook_rackbox"]["default_config"]["passenger_runit"]["host"] = "localhost"

default["cookbook_rackbox"]["apps"]["unicorn"] = []
default["cookbook_rackbox"]["apps"]["passenger"] = []

set['nginx']['init_style'] = "init"

