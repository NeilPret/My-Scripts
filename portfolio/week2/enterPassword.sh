#!/bin/bash

read -sp "enter value 1 : " value_1 \r
read -sp "enter value 2 : " value_2 \r

echo $value_1 | sha256sum
echo $value_2 | sha256sum

exit 0
