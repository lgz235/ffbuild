#!/bin/bash
# ==============================================================================
# Copyright (C) 2018-2019 Intel Corporation
#
# SPDX-License-Identifier: MIT
# ==============================================================================

set -e

#BASEDIR=$(dirname "$0")/../..
#if [ -n ${FFVA_SAMPLES_DIR} ]
#then
#    source $BASEDIR/scripts/setup_env.sh
#fi
source setlocale.sh

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/build/usr/lib/x86_64-linux-gnu
ldconfig

#import GET_MODEL_PATH
#source $BASEDIR/scripts/path_extractor.sh

MODEL=mobile_yolo9

DEVICE=CPU

#DETECT_MODEL_PATH=./yolov3_coco_newversion

#if [ -z ${1} ]; then
#  echo "ERROR set path to video"
#  echo "Usage: ./object_detection_ssd.sh <path/to/your/video/sample>"
#  exit
#fi

#FILE=./1.mp4

/home/build/usr/bin/ffmpeg -i 1.mp4 \
-vf "detect=model=mobile_yolo9.xml:model_proc=mobile_yolo9.json:device=CPU: \
nireq=48:threshold=0.5:interval=1:batch_size=1,ocv_overlay, \
metaconvert=converter=json:method=all:source=1.mp4" \
-f metapublish -output_format batch mobile_yolo_result.json
#-y mobileyolo9_output.h264
#-f metapublish -output_format batch mobile_yolo_result.json
#-f iemetadata -y yolov3_coco_newversion_result.json
#nireq=48:threshold=0.5:interval=1:batch_size=1:async_preproc=1,ocv_overlay, \
