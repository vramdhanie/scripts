#!/bin/bash

# Ensure that the parameter is one of the allowed values
function validate() {
  LIST="prod staging qa dev local"
  DELIM=" "
  VALUE=$1
  [[ "$LIST" =~ ($DELIM|^)$VALUE($DELIM|$) ]]
}

echo "DB Connect Running"

# Default to prod
env="prod"
if [ ! -z $1 ] 
then
  env=$1
fi

if validate $env; then
  API_KEY=$ATLAS_API_KEY
  if [ -z $ATLAS_API_KEY ]
  then
    echo "API KEY MISSING"
  else
    yarn workspace @teamflow/cli ops db createUser --env=$env --privateApiKey=$API_KEY
  fi
else
  echo "Invalid environment. Usage: connect <env> Where env = prod | staging | qa | dev | local (default = prod)"
fi
