import image


#get pixel at point
#change RGB intensity
#replace existing pixel

def main():
    img = image.Image('image.jpg')
    imgWin = image.ImageWin(img.getWidth, img.getHeight)
    img.draw(imgWin)

    for i in range(img.getHeight()):
        for j in range(img.getWidth()):
            oldPixel = img.getPixel(i,j)
            newPixel = image.Pixel(oldPixel.getRed() ,0, 0)
            img.setPixel(j, i, newPixel)
    
    img.draw(imgWin)
    imgWin.exitonclick()

main()
