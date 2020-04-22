#!/bin/bash
# ==============================================================================
# Copyright (C) 2018-2019 Intel Corporation
#
# SPDX-License-Identifier: MIT
# ==============================================================================

cd /home/FFmpeg/

./configure --prefix="/usr" --libdir=/usr/lib/x86_64-linux-gnu --extra-libs="-lpthread -lm" --enable-shared --enable-gpl --enable-libass --enable-libfreetype  --enable-openssl --enable-nonfree --enable-libdrm --enable-libmfx --disable-doc --disable-htmlpages --disable-manpages --disable-podpages --disable-txtpages --enable-libfdk-aac --enable-libmp3lame --enable-libopus --enable-libvorbis --enable-libvpx --enable-libx264 --enable-libx265 --enable-libaom --enable-librdkafka --enable-libjson_c --enable-libinference_engine_c_wrapper --enable-libopencv && \
    make -j8 && \
    make install DESTDIR="/home/build"

