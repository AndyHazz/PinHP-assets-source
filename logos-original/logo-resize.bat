FOR %%a IN (*.png) DO magick %%a -background none -resize 201x72^> -gravity center -extent 201x72 %%a