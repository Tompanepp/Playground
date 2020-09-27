import image

def convertToSepiaTone(imageToChange):
    width = imageToChange.getWidth()
    height = imageToChange.getHeight()
    sepiaImage = image.EmptyImage(width, height)
    for col in range(width):
        for row in range(height):
            newPixel = calculateSepiaToneRGB(imageToChange.getPixel(col, row))
            sepiaImage.setPixel(col, row, newPixel)
    return sepiaImage
            
def calculateSepiaToneRGB(pixel):
    R = pixel.getRed()
    G = pixel.getGreen()
    B = pixel.getBlue()
    
    newR = (R * 0.393 + G * 0.769 + B * 0.189)
    newG = (R * 0.349 + G * 0.686 + B * 0.168)
    newB = (R * 0.272 + G * 0.534 + B * 0.131)

    return image.Pixel(newR, newG, newB)
    
def main():
    wn = image.ImageWin()
    img = image.Image('luther.jpg')
    sepiaToneImage = convertToSepiaTone(img)
    sepiaToneImage.draw(wn)
    
main()