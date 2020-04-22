set -e

export DATA_PATH=~/ffbuild/data
#cd ~/ffbuild/data/models/intel/

cd ~/ffbuild/data/script/

sudo ./run_docker_container.sh --intel-models-path=$DATA_PATH/models/intel --image-name=lgz235/ffmpeg-video-analytics-package-build:v1.5
