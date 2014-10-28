#!/bin/bash

source /opt/rh/ruby193/enable
source /opt/rh/python27/enable

# scl enable ruby193 "ruby -v"
# scl enable python27 "python --version"

GROOVY_HOME=~/Projects/Groovy/groovy-2.3.7
PATH=$GROOVY_HOME/bin:$PATH

export GROOVY_HOME
export PATH
