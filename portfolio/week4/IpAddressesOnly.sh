#!/bin/bash

#uses sed to manipulate the output to only show lines with IP Address 
/bin/bash ./IpInfo.sh | sed -nr '/IP Address/p' 



