#!/bin/bash
#

sensors | grep Tctl | grep -o "+[0-9]*.*C"
