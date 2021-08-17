MD logos-resized
MD logos-arcadeitalia
MD logos-for-cpwizard

@REM FOR %%r IN ("C:\Users\andyn\Documents\MAME 0.106 Non-Merged\roms\*.zip") DO (
@REM   if EXIST "logos-original\%%~nr.png" (
@REM     magick "logos-original\%%~nr.png" -background none -trim -resize 140x105^> -gravity south -extent 140x105 "logos-resized\%%~nr.png"
@REM   ) else (
@REM     wget "http://adb.arcadeitalia.net/media/mame.current/decals/%%~nr.png" -P "logos-arcadeitalia"
@REM     magick "logos-arcadeitalia\%%~nr.png" -background none -trim -resize 140x105^> -gravity south -extent 140x105 "logos-resized\%%~nr.png"
@REM   )
@REM )

FOR %%r IN ("C:\Users\andyn\Documents\MAME 0.106 Non-Merged\roms\*.zip") DO (
  if EXIST "logos-original\%%~nr.png" (
    magick "logos-original\%%~nr.png" -background none -trim -resize 160x64^> -gravity north -extent 160x64 "logos-for-cpwizard\%%~nr.png"
  ) 
)

@REM MD marquees
@REM FOR %%f IN (marquees-original\*.png) DO (
@REM   magick %%f -background black -trim -resize 201x47! marquees\%%~nxf
@REM )