#!/bin/bash -x
downloadFiles()
 {
     wget  --user downloader --password eyJ2ZXIiOiIyIiwidHlwIjoiSldUIiwiYWxnIjoiUlMyNTYiLCJraWQiOiI5YVRwak9vLTdwWmZZNDdxMXBsSFNocEJNX2FGTUhBVXZYelI0ekFQd2JnIn0.eyJzdWIiOiJqZnJ0QDAxZGdldjlwZjUwN3pjMGNncXhyZGsxZWR5XC91c2Vyc1wvZG93bmxvYWRlciIsInNjcCI6Im1lbWJlci1vZi1ncm91cHM6cmVhZGVycyBhcGk6KiIsImF1ZCI6ImpmcnRAMDFkZ2V2OXBmNTA3emMwY2dxeHJkazFlZHkiLCJpc3MiOiJqZnJ0QDAxZGdldjlwZjUwN3pjMGNncXhyZGsxZWR5IiwiZXhwIjoxNTY2NTMyODg3LCJpYXQiOjE1NjY1MjkyODcsImp0aSI6ImEzOTViYWE3LTQwODEtNDllOS1iNWNhLTNkZDE0NmFjMGJlYyJ9.IJ5aN74t_ud1p8XlHrfZmTcKOAcHV3Bt1cO4dHS6G7k_lYuE7yEeRp9YezD-CPLm4vWvM_cX5khozAjiMLjNdE7fL40uxZQ_uJ92ko8JkSJKoAWRJoProeE42uxpqnPxpfOrmGAEIYSxnntyn5N17l6REpL7_SEKLGDIagd32PZgYTQToRknxM5Q94wMX0d7ALdzGmc0cLEyVgQe81OJ4XF2ogTLKcTz4ZpstZJucBthVWfiw8btoH9x3zKtLiU6s3Lkarf_Q8T4h6QFTLlsrxUy2BeRyT_e2wcwKiJck9VAlOWCYuEkl1bucn4vNfHNjTiNKmh-CXaW9mpMnLZpww http://35.206.126.225/artifactory/generic-local/reguhoop/sampserver/oroginalserver/samp037svr_R2-1.tar.gz
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

