MD logos
FOR %%f IN (logos-original\*.png) DO (
  magick %%f -background none -trim -resize 140x105^> -gravity center -extent 140x105 logos\%%~nxf
)

MD marquees
FOR %%f IN (marquees-original\*.png) DO (
  magick %%f -background black -trim -resize 201x47! marquees\%%~nxf
)