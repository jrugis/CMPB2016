#!/bin/sh

for((i=0; i<=9; ++i))
do
  echo $i
  rm cell1-0${i}_crop.png
  ffmpeg -i cell1-0${i}.png -vf crop=1300:1050:420:60 cell1-0${i}_crop.png
  rm cell1N-0${i}_crop.png
  ffmpeg -i cell1N-0${i}.png -vf crop=1300:1050:420:60 cell1N-0${i}_crop.png
done
rm cell1-10_crop.png
ffmpeg -i cell1-10.png -vf crop=1300:1050:420:60 cell1-10_crop.png
rm cell1N-10_crop.png
ffmpeg -i cell1N-10.png -vf crop=1300:1050:420:60 cell1N-10_crop.png


#ffmpeg -i seven_cells_smooth.png -vf "crop=1150:1080:400:60" seven_cells_smooth_crop.png
#ffmpeg -i three_cells_smooth.png -vf "crop=1150:1080:400:60" three_cells_smooth_crop.png

#ffmpeg -i seven_cells_rough.png -vf "crop=1150:1080:400:60" seven_cells_rough_crop.png
#ffmpeg -i three_cells_rough.png -vf "crop=1150:1080:400:60" three_cells_rough_crop.png

#ffmpeg -i cell1-00.png -vf "crop=1300:1050:420:60" cell1-00_crop.png

#ffmpeg -i cells-stack-16_seg.jpg -vf "crop=1300:1050:420:60" cells-stack-16_seg_crop.jpg

