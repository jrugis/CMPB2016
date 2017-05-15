#!/bin/sh

#ffmpeg -i cells-stack-16.jpg -vf "crop=512:512:150:0" cells-stack-16_crop.jpg
#ffmpeg -i cells-stack-16_seg.jpg -vf "crop=512:512:150:0" cells-stack-16_seg_crop.jpg

#ffmpeg -i seven_cells_rough.png -vf "crop=1150:1080:400:60" seven_cells_rough_crop.png
#ffmpeg -i three_cells_rough.png -vf "crop=1150:1080:400:60" three_cells_rough_crop.png

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

ffmpeg -i cell1-C0.png -vf "crop=1090:850:480:110" cell1-C0_crop.png
ffmpeg -i cell1-C6.png -vf "crop=1090:850:480:110" cell1-C6_crop.png
ffmpeg -i cell1-C16.png -vf "crop=1090:850:480:110" cell1-C16_crop.png
ffmpeg -i cell1-C40.png -vf "crop=1090:850:480:110" cell1-C40_crop.png
ffmpeg -i cell1-C100.png -vf "crop=1090:850:480:110" cell1-C100_crop.png

ffmpeg -i cell1-NC6.png -vf "crop=1090:850:480:110" cell1-NC6_crop.png
ffmpeg -i cell1-NC16.png -vf "crop=1090:850:480:110" cell1-NC16_crop.png
ffmpeg -i cell1-NC40.png -vf "crop=1090:850:480:110" cell1-NC40_crop.png
ffmpeg -i cell1-NC100.png -vf "crop=1090:850:480:110" cell1-NC100_crop.png
