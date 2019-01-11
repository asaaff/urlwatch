#!/bin/sh

cache="./cache.db"
urls="./urls.yaml"
config="./urlwatch.yaml"

options=" --urls $urls --cache $cache --config $config"

if [ "$1" = "-v" ]; then
    ./urlwatch $options -v
    exit
fi

if [ "$1" = "edit" ]; then
    ./urlwatch $options --edit
    exit
fi

if [ "$1" = "test" ]; then
    ./urlwatch $options --test-filter $2
    exit
fi


#./urlwatch --urls ./urls.yaml --config ./urlwatch.yaml
