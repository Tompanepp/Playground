import image


# Need to deal with corner detection, not too keen on that
def smoothenScaledImage(sourceImage):
    width = sourceImage.getWidth()
    height = sourceImage.getHeight()
    newImage = image.EmptyImage(width, height)
    for col in range(width):
        for row in range(height):
            startPixel = sourceImage.getPixel(col, row)
            topLeftPixel = sourceImage.getPixel(col, row + 1)
            topRightPixel = sourceImage.getPixel(col + 1, row + 1)
            BottomRightPixel = sourceImage.getPixel(col + 1, row)
            
            regAvg = (startPixel.getRed() + topLeftPixel.getRed() + topRightPixel.getRed() + BottomRightPixel.getRed())/4
            greenAvg = (startPixel.getGreen() + topLeftPixel.getGreen() + topRightPixel.getGreen() + BottomRightPixel.getGreen())/4
            blueAvg = (startPixel.getGreen() + topLeftPixel.getBlue() + topRightPixel.getBlue() + BottomRightPixel.getBlue())/4
            newPixel = image.Pixel(regAvg, greenAvg, blueAvg)
            
            newImage.setPixel(col, row, newPixel)
            
    return newImage
            
def doubleImageSize(imageToChange, scaleFactor):
    width = imageToChange.getWidth()
    height = imageToChange.getHeight()
    newImage = image.EmptyImage(width * scaleFactor, height * scaleFactor)
    for col in range(width):
        for row in range(height):
            currentPixel = imageToChange.getPixel(col, row)
            newImage.setPixel(col * scaleFactor, row * scaleFactor, currentPixel)
            newImage.setPixel(col * scaleFactor + 1, row * scaleFactor , currentPixel)
            newImage.setPixel(col * scaleFactor, (row * scaleFactor) + 1, currentPixel)
            newImage.setPixel((col * scaleFactor) + 1, (row * scaleFactor) + 1, currentPixel)
    
    return newImage

def main():
    scaleFactor = 2
    img = image.Image('luther.jpg')
    wn = image.ImageWin(img.getWidth() * scaleFactor, img.getHeight() * scaleFactor)
    newImage = doubleImageSize(img, scaleFactor)
    smoothenedImage = smoothenScaledImage(img)
    smoothenedImage.draw(wn)
    
main()
