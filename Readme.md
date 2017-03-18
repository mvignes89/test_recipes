This is test recipes
  How it works?
     -> it works with the help of monit and upstart
     -> it generate 2 files one for monit and one for upstart 
     -> we have override the cheif 11 opsworks_nodejs to generate node_web_app-jallikattu.monitrc file in /etc/monit.d/ directory
     -> using monit we send signal to upstart to start a program with the help of configaration configured in "/etc/init/test-server.conf"
     -> upstart call the "/usr/local/bin/test-script.sh" the file where we have the script to start our nodejs application which start the application and log into "/srv/www/jallikattu/current/log/node.log" file