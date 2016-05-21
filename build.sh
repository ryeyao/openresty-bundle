#!/bin/bash
WORK_ROOT=$(cd $(dirname $0) && pwd)
OUTPUT_PATH=${WORK_ROOT}/output
mkdir -p ${OUTPUT_PATH}
./configure --with-debug --prefix=${OUTPUT_PATH} --with-pcre-jit --with-http_iconv_module --add-module=${WORK_ROOT}/bundle/stream-lua-nginx-module --with-luajit --with-threads --with-http_realip_module --with-stream --with-stream_ssl_module --with-cc-opt="-D DDEBUG=1" && gmake -j24 && gmake install
