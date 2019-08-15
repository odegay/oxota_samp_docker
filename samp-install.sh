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
  
 main()
 {
     clean
     downloadFiles
     unpack
     clean
}
main # calling program entry point

