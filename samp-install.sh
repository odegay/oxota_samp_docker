#!/bin/bash -x
downloadBaseServer()
 {
     wget  http://35.206.126.225/artifactory/generic-local/reguhoop/sampserver/oroginalserver/samp037svr_R2-1.tar.gz
 }
  
 unpackBaseServer()
 {
     tar -xf  samp037svr_R2-1.tar.gz
 }
  
 clean()
 {
     rm -f ../samp037svr_R2-1.tar.gz
 }
 
 rconpass ()
 {
	dir
	cd samp03 
	dir
	cat server.cfg
	sed -i 's/rcon_password changeme/rcon_password ABCdef123/' server.cfg
	cat server.cfg
 }
 createShoebill()
 {
	
	cd samp03
	rm -f server.cfg
	wget https://raw.githubusercontent.com/odegay/oxota_samp_docker/master/Configuration/server.cfg
	
	#cd ..
	
	mkdir plugins
	cd plugins
	wget  http://35.206.126.225/artifactory/generic-local/reguhoop/sampserver/Shoebill
	cd ..
	
	wget  http://35.206.126.225/artifactory/generic-local/reguhoop/sampserver/shoebillbottstrap/shoebill.TAR
	tar -xf  shoebill.TAR
	cd shoebill
	cd bootstrap
	#wget -O shoebill-dependency-manager.jar  http://35.206.126.225/artifactory/oxotarp_shoebill/net/gtaun/shoebill-dependency-manager/2.0/shoebill-dependency-manager-2.0.jar
	#wget -O shoebill-launcher.jar http://35.206.126.225/artifactory/oxotarp_shoebill/net/gtaun/shoebill-launcher/2.0/shoebill-launcher-2.0.jar
	wget http://35.206.126.225/artifactory/oxotarp_shoebill/net/gtaun/shoebill-dependency-manager/2.0/shoebill-dependency-manager-2.0.jar
	wget http://35.206.126.225/artifactory/oxotarp_shoebill/net/gtaun/shoebill-launcher/2.0/shoebill-launcher-2.0.jar

	cd ..	
	
	cd ..	
 }
 
  
 main()
 {
     clean
     downloadBaseServer
     unpackBaseServer
	 
	 createShoebill
	 rconpass
     clean
}
main # calling program entry point

