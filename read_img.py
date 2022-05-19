import serial
import sys
import requests
from PIL import Image
import numpy as np

if __name__ == '__main__':
    com_instance = sys.argv[1]
    print("COM listen at: " + com_instance)
    com = serial.Serial(com_instance, '115200')
    print(com)

    resolution_x = 320
    resolution_y = 240

    while True:
        # raw_data = com.readline()
        # data = raw_data.decode("utf-8")
        # data = str(data)
        # if len(data) > 1:
        #     print(len(data))
            # print(raw_data)
        # if data == "[i]\n":
            # print(1)
        image_data = com.read(resolution_x * resolution_y * 2)
        print(len(image_data))
        print(image_data[:30])
        
        image = np.frombuffer(image_data, dtype=np.uint16)
        image = np.reshape(image, (resolution_y, resolution_x))
        MASK5 = 0b011111
        MASK6 = 0b111111

        b = (image & MASK5) << 3
        g = ((image >> 5) & MASK6) << 2
        r = ((image >> (5 + 6)) & MASK5) << 3

        # Compose into one 3-dimensional matrix of 8-bit integers
        rgb = np.dstack((r,g,b)).astype(np.uint8)
        print(image.shape)
        print(rgb.shape)
        new_image = Image.fromarray(rgb,"RGB")

        # Show image
        new_image.show()

        # Save image
        #new_image.save('../static/new.png')
        
    print('--unreadable--')
    print('exit')
