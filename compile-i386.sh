make clean

./configure \
--prefix=i386 \
--disable-ffmpeg \
--disable-ffplay \
--disable-ffprobe \
--disable-ffserver \
--enable-avresample \
--enable-cross-compile \
--sysroot="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator6.0.sdk" \
--target-os=darwin \
--cc="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/usr/bin/gcc" \
--extra-cflags="-arch i386" \
--extra-ldflags="-arch i386 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator6.0.sdk" \
--arch=i386 \
--cpu=i386 \
--enable-pic \
--disable-asm \

# build for i386
make clean
make

# copy out the i386 libs
mkdir -p ./build/i386

cp -f ./libavcodec/libavcodec.a ./build/i386/libavcodec.a
cp -f ./libavdevice/libavdevice.a ./build/i386/libavdevice.a
cp -f ./libavfilter/libavfilter.a ./build/i386/libavfilter.a
cp -f ./libavformat/libavformat.a ./build/i386/libavformat.a
cp -f ./libavutil/libavutil.a ./build/i386/libavutil.a
cp -f ./libswscale/libswscale.a ./build/i386/libswscale.a



