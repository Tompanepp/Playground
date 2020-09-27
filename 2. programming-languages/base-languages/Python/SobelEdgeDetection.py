'''
#Image filter
    Image => Image
    kernel convolution : technique at the heart of most filters(blurs, edge detection)
        take small grid of numbers (The Kernel)
            run it over the source image and transform it into another image
                based on what the numbers in the Kernel (These numbers can result in blurs, sharpening etc)


    Types of kernels:
        mean blur kernel
        guassian blur kernel
        edge detection kernel

Edge: sharp change in intensity/colour between two pixels


Algorithm overview
    #grey scale the image
    #create horizontal Kernel
    #create vertical kernel
    #apply horizonal kernel over source image
        #save results in new image X
    #apply veritical kernel over source image
        #save results in new image Y
    #combine image X and Y into new image
        #=> This is the result with edges highlighted
'''