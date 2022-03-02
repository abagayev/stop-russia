#!/bin/sh

# select random target
echo $(shuf resources.txt | head -n1)
