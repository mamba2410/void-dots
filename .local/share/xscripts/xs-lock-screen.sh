IMAGE=$HOME/.i3lock.png
SCREENSHOT="scrot $IMAGE" # 0.46s

# Alternate screenshot method with imagemagick. NOTE: it is much slower
# SCREENSHOT="import -window root $IMAGE" # 1.35s

# Here are some imagemagick blur types
# Uncomment one to use, if you have multiple, the last one will be used

# All options are here: http://www.imagemagick.org/Usage/blur/#blur_args
#BLURTYPE="0x4"
#BLURTYPE="0x5" # 7.52s
#BLURTYPE="0x2" # 4.39s
BLURTYPE="5x2" # 3.80s
#BLURTYPE="2x8" # 2.90s
#BLURTYPE="2x3" # 2.92s

# Get the screenshot, add the blur and lock the screen with it
$SCREENSHOT

convert $IMAGE -resize 10% $IMAGE
convert $IMAGE -blur $BLURTYPE $IMAGE
convert $IMAGE -resize 1000% $IMAGE
i3lock -i $IMAGE
rm $IMAGE