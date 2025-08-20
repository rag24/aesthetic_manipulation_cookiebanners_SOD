# Using Salient Object Detection to Identify Manipulative Cookie Banners that Circumvent GDPR
This repository includes the code used to collect the data, the collected dataset with button-level salience scores, and the code used to generate the salience scores.  This code and dataset corresponds with the "Using Salient Object Detection to Identify Manipulative Cookie Banners that Circumvent GDPR" paper published in ICWSM2026. 

The paper applies a unsupervised and generalizable slaient object detection model (SOD), called DeepRare [1], to the problem of aesthetic manipulation detection in cookie banners. To replicate the results and actually reproduce the pixel-level salience maps, instead of the provided element-level salience scores, you can download and run the DeepRare module from: https://github.com/numediart/VisualAttention-DeepRare2019.

Due to size, the image datasets that we collected from websites' landing pages are stored on Hugging Face. We provide a Shell Script in our repository to easily download the two datasets. After downloading Git Bash (https://git-scm.com/downloads) and Git LFS (https://git-lfs.github.com/), you can open Git Bash and navigate to the location where this repository is stored locally. Type "chmod +x download_datasets.sh" to make the script executable, and then "./download_datasets.sh" to download the two folders of images. There should be 2,490 images in the folder for websites visited from an EU IP address, and 2,492 images in the folder for websites visited from a NY IP address. For each image, 

Our Selenium crawler could be reused to collect images from more websites. We provide the Jupyter notebook file that does so (Data_Collection_Website_Landing_Page.ipynb).


[1] Kong, Phutphalla, et al. "DeepRare: generic unsupervised visual attention models." Electronics 11.11 (2022): 1696.
