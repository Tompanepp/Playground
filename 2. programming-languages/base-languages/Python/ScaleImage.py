import image

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
    newImage.draw(wn)
    
main()
