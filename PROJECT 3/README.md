# DS4002_LAM
DS4002 Spring 2025 Project Group LAM

Madison Gallagher, Lauren Turner, Aroosha Solomon
## Repository Contents
This repository is for the Spring 2025 session of DS 4002 at The University of Virginia's School of Data Science. It contains the materials used to train a model to colorize photos from black and white to color.

## Software and Platform
For this project, we used Google Colab and Jupyter Notebook with Python. We got our data from Visual Attention Lab. Our dataset is 84 photos of dimension 1024x768 pixels. We built three models: a Beta model, Gamma model, and Pix2Pix model. The beta model used tensorflow and skimage.color. The gamma model used [WHAT PACKAGES-LAUREN]. The Pix2PIx model used [INSERT PACKAGES- AROOSHA].

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
[INSERT LAUREN] 

Pix2Pix Model
[INSERT AROOSHA]


