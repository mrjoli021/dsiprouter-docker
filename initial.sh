#!/bin/bash
#
#Author: Joli Martinez
#Date: 01-21-21
#
#Purpose: gathers initial variables for the application
#
#
#


#function goes out to the internet and gets the public IP of the server
function getPublicIP ()  {
  
	publicIp=`host myip.opendns.com resolver1.opendns.com | tail -n 1 | cut -d " " -f 4`
          

}

getPublicIP
echo $publicIp

