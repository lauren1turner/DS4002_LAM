# DS4002_LAM
DS4002 Spring 2025 Project Group LAM

Madison Gallagher, Lauren Turner, Aroosha Solomon
## Repository Contents
This repository is for the Spring 2025 session of DS 4002 at The University of Virginia's School of Data Science. It contains the materials used to perform song lyric analysis on the top 25 songs (as of 02/04/2025) of different cities in the United States including New York, Los Angeles, Miami, Chicago, Atlanta, Washington D.C., and Houston.

## Software and Platform
For this project, we used Google Colab and Jupyter Notebook with Python and RScript. We got our data from Apple Music generated city charts, and we scraped the lyrics from the Genius API. The additional packages installed and utilized were: matplotlib, pandas, requests, BeautifulSoup, time, html, tm, wordcloud, RColorBrewer. The platform used was Windows.

## Documentation Map
![image](https://github.com/user-attachments/assets/d6acfdf1-a032-478f-a354-dec3fdf5e999)


## Reproducing Results
### Gathering Data
In order to reproduce our results, find some top charts playlists from the cities you would like to analyze (can be from Apple Music, Spotify, Amazon Music, SoundCloud, etc.). Enter the song name and artist into a .txt file in the format ("song_name", "artist") with each song separated by commas (see DATA/sample_song_list). Register for the Genius API: https://docs.genius.com/#/getting-started-h1 ; save your access token. Open Script/lyric_scraper_script.py and input each song list and run to create a .csv file with all of the lyrics data. 
### EDA
Use the general data to complete exploratory data analysis. This can be creating a word cloud, analyzing the most popular genres/artists, or creating different charts. See Script/4002_Project1_EDA.ipynb and Script/wordcloud_and_EDA.R for examples.
### Analysis: TF-IDF

