make clean

./configure \
--prefix=armv7 \
--disable-ffmpeg \
--disable-ffplay \
--disable-ffprobe \
--disable-ffserver \
--enable-avresample \
--enable-cross-compile \
--sysroot="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS6.0.sdk" \
--target-os=darwin \
--cc="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/gcc" \
--extra-cflags="-arch armv7 -mfpu=neon -miphoneos-version-min=6.0" \
--extra-ldflags="-arch armv7 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS6.0.sdk -miphoneos-version-min=6.0" \
--arch=arm \
--cpu=cortex-a9 \
--enable-pic \


# build for armv7
make clean
make

# copy out the armv7 libs
mkdir -p ./build/armv7
cp -f ./libavcodec/libavcodec.a ./build/armv7/libavcodec.a
cp -f ./libavdevice/libavdevice.a ./build/armv7/libavdevice.a
cp -f ./libavfilter/libavfilter.a ./build/armv7/libavfilter.a
cp -f ./libavformat/libavformat.a ./build/armv7/libavformat.a
cp -f ./libavutil/libavutil.a ./build/armv7/libavutil.a
cp -f ./libswscale/libswscale.a ./build/armv7/libswscale.a

