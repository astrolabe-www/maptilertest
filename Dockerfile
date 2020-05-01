FROM osgeo/gdal:ubuntu-small-latest

# docker run -v $PWD/imgs:/opt/imgs -it db55ad333ad8 bash
# export JPEGMEM=1000000000
# export GDAL_ALLOW_LARGE_LIBJPEG_MEM_ALLOC=1000000000
# cd /opt/imgs
# gdal_translate -ot byte test_.jpg test.jpg
# gdal2tiles.py --profile=raster --resampling=bilinear --webviewer=none test.jpg
