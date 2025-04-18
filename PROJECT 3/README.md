# DS4002_LAM
DS4002 Spring 2025 Project Group LAM

Madison Gallagher, Lauren Turner, Aroosha Solomon
## Repository Contents
This repository is for the Spring 2025 session of DS 4002 at The University of Virginia's School of Data Science. It contains the materials used to train a model to colorize photos from black and white to color.

## Software and Platform
For this project, we used Google Colab and Jupyter Notebook with Python. We got our data from Visual Attention Lab. Our dataset is 84 photos of dimension 1024x768 pixels. We built three models: a Beta model, Gamma model, and Pix2Pix model. The beta model used tensorflow and skimage.color. The gamma model used torch, torchvision, matplotlib, numpy, os, and Image. The Pix2PIx model used torch, torchivision and pillow.

## Documentation Map
<img width="728" alt="image" src="https://github.com/user-attachments/assets/798d4b94-d6c5-45a4-a3f5-c3b29269d872" />


## Reproducing Results
### Gathering Data
In order to reproduce our results, find approximately 84 images of the same dimension. Try to find a dataset of images of varying shapes and colors. Download the images and save them in a folder. These will be used to train the models.
### EDA
In order to ensure that all of our photos are uniform and standardized for the model to work with, we processed all of the JPG files to be on a corrected grayscale and dimensions (1024x768). We also applied a grayscale algoritihim and analyzed the individual RGB channels to ensure that the grayscale was applied correctly and to ensure the photos are truly grayscale. 
### Analysis: TF-IDF
Beta Model
In order to reproduce the results for the Beta Model, first upload your images into the session storage (so they live under /content/) and install the required libraries: scikit-image, TensorFlow, etc.. Then copy in the helper functions: load_image, preprocess, and load all files matching *jpg*, then split into train/test arrays, and define the encoder–decoder model exactly as shown. Finally, call model.fit(...) to train and use the display_colorization function on held‑out examples to visualize your results.

Gamma Model
In order to reproduce the results for the Gamma model, upload your images into the session storage (if using Google Colab or an online notebook) and install the required libraries: torch, torchvision, matplotlib, numpy, etc. Next, define the model setup using the function, ColorizationModel, and upload your images to be converted to grayscale using the .convert() helper function and split the data into train and test groups. Next, train the model and use ~20 epochs to reduce loss/error. Finally, test the model on new images to visualize the accuracy of the results.

Pix2Pix Model
The Pix2pix model implements a conditional Generative Adversarial Network (GAN) for automatic image colorization, using a U-Net architecture as the generator and a PatchGAN-style discriminator. To use the model, prepare your dataset by placing grayscale images in the /dataset/train/grayscale_filtered/ directory and their corresponding color images with matching filenames in /dataset/train/color_filtered/. Install Python packages such as torch, torchvision, and Pillow. The model takes grayscale images as input and learns to generate realistic color versions by optimizing both adversarial loss and L1 reconstruction loss. During training, sample outputs are saved every 10 epochs to visually monitor progress. One has the option to adjust training parameters like batch size, number of epochs, and learning rate. 


