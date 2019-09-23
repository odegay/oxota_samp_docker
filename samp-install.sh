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
	cd samp03 
	sed -i 's/rcon_password changeme/rcon_password ABCdef123/' server.cfg
	#cat server.cfg
 }
 createShoebill()
 {
	wget  http://35.206.126.225/artifactory/generic-local/reguhoop/sampserver/shoebillbottstrap/shoebill.TAR
	tar -xf  shoebill.TAR
	cd shoebill
	cd bootstrap
	wget -O shoebill-dependency-manager.jar  http://35.206.126.225/artifactory/oxotarp_shoebill/net/gtaun/shoebill-dependency-manager/2.0/shoebill-dependency-manager-2.0.jar
	wget -O shoebill-launcher.jar http://35.206.126.225/artifactory/oxotarp_shoebill/net/gtaun/shoebill-launcher/2.0/shoebill-launcher-2.0.jar
	cd ..	
 }
 
  
 main()
 {
     clean
     downloadBaseServer
     unpackBaseServer
	 rconpass
	 createShoebill
     clean
}
main # calling program entry point

