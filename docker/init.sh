#!/bin/bash
ENV1=$1
ENV2=$2

if [ ! -e /lock/php-"$ENV2".lock ]  && [ x"$ENV1" = xDevelopment ]; then
  touch /lock/php-"$ENV2".lock
fi