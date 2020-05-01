FROM osgeo/gdal:ubuntu-small-latest

ARG MEM_SIZE=1000000000
ENV JPEGMEM=$MEM_SIZE
ENV GDAL_ALLOW_LARGE_LIBJPEG_MEM_ALLOC=$MEM_SIZE

RUN mkdir -p /opt/imgs
ADD imgs/test.jpg /opt/imgs
WORKDIR /opt/imgs

RUN gdal_translate -ot byte test.jpg _test.jpg && rm -rf test.jpg

CMD ["gdal2tiles.py", "--profile=raster", "--resampling=bilinear", "--webviewer=none", "_test.jpg"]
