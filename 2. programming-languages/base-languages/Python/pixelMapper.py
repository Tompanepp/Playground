import image

def operateOnPixel(sourceImage, rgbTransformeation):
    width = sourceImage.getWidth()
    height = sourceImage.getHeight()
    newImage = image.EmptyImage(width, height)
    
    #rgbTransformer(sourceImage.getPixel(col, row)
    for col in range(width):
        for row in range(height):
            newImage.setPixel(col, row, rgbTransformeation(sourceImage.getPixel(col, row)))
    
    return newImage

#pixelMapper = (pixel) => pixel
def removeRedFromPixel(pixel):
    return image.Pixel(0, pixel.getBlue(), pixel.getGreen())

def main():

    img = image.Image('luther.jpg')
    wn = image.ImageWin(img.getWidth(), img.getHeight())
    

 
    newImage = operateOnPixel(img, removeRedFromPixel)
    newImage.draw(wn)
    
main()

