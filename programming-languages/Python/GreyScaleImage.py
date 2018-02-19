import image

img = image.Image("luther.jpg")
width = img.getWidth()
height = img.getHeight()
newImage = image.EmptyImage(width, height)
wn = image.ImageWin()

for col in range(width):
    for row in range(height):
        currentPixel = img.getPixel(col, row)
        red = currentPixel.getRed()
        green = currentPixel.getGreen()
        blue = currentPixel.getBlue()
        
        #Key is here, not entirely sure why this works. I think one needs to study RGB in more detail
        avgRGB = (red + green + blue) / 3
        newImage.setPixel(col, row, image.Pixel(avgRGB, avgRGB, avgRGB))
        
newImage.draw(wn)
wn.exitonclick()