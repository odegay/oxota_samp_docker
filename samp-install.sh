#!/bin/bash -x
downloadFiles()
 {
     wget  http://files.sa-mp.com/samp037svr_R2-1.tar.gz
 }
  
 unpack()
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
	sed -i 's/rcon_password changeme/rcon_password QWErty123/' server.cfg
	cat server.cfg
 }
  
 main()
 {
     clean
     downloadFiles
     unpack
	 rconpass
     clean
}
main # calling program entry point

