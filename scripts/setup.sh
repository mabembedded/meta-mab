#!/bin/bash
build_dir=$1

if [ -z "$build_dir" ]; then
        build_dir=build-mab
fi

mkdir -p $build_dir/conf
cp -f layers/meta-mab/conf/*.conf $build_dir/conf/
source layers/openembedded-core/oe-init-build-env $build_dir
