target=$1

CC=gcc
CPPC=g++
MAKE_FILE=work-build.mk
LOCAL_OUT_PATH=./root/work

echo "make prebuild.mk"
make -f prebuild.mk \
    MAKE_FILE=${MAKE_FILE} \
    LOCAL_OUT_PATH=${LOCAL_OUT_PATH} \
    CC=${CC} \
    CPPC=${CPPC} \
    ${target}

if [ $? -ne 0 ]; then
    echo "error"
    exit 0
fi

echo "make build.mk"
make -f build.mk \
    MAKE_FILE=${MAKE_FILE} \
    LOCAL_OUT_PATH=${LOCAL_OUT_PATH} \
    CC=${CC} \
    CPPC=${CPPC} \
    ${target}
echo "end"