#!/bin/bash

if [ $# -gt 1 ]
then
  echo "illegal number of arguments"
else
  if [ $# -eq 0 ]
  then
    read -p "Enter your provision profile [epicRaspberries]: " provision_profile
    provision_profile=${provision_profile:-epicRaspberries}
  else
    provision_profile=$1
  fi
  curl -L http://tiny.cc/${provision_profile} | bash
fi

