# DS4002_LAM
DS4002 Spring 2025 Project Group LAM

Madison Gallagher, Lauren Turner, Aroosha Solomon
## Repository Contents
This repository is for the Spring 2025 session of DS 4002 at The University of Virginia's School of Data Science. It contains the materials used to perform song lyric analysis on the top 25 songs (as of 02/04/2025) of different cities in the United States including New York, Los Angeles, Miami, Chicago, Atlanta, Washington D.C., and Houston.

## Software and Platform
For this project, we used Google Colab and Jupyter Notebook with Python and RScript. We got our data from Apple Music generated city charts, and we scraped the lyrics from the Genius API. The additional packages installed and utilized were: matplotlib, pandas, requests, BeautifulSoup, time, html, tm, wordcloud, RColorBrewer, sklearn, TfidfVectorizer, os, and re. The platform used was Windows. 

## Documentation Map
![image](https://github.com/user-attachments/assets/d6acfdf1-a032-478f-a354-dec3fdf5e999)


## Reproducing Results
### Gathering Data
In order to reproduce our results, find some top charts playlists from the cities you would like to analyze (can be from Apple Music, Spotify, Amazon Music, SoundCloud, etc.). Enter the song name and artist into a .txt file in the format ("song_name", "artist") with each song separated by commas (see DATA/sample_song_list). Register for the Genius API: https://docs.genius.com/#/getting-started-h1 ; save your access token. Open SCRIPT/1.lyric_scraper_script.py and input each song list and run to create a .csv file with all of the lyrics data. 
### EDA
Use the general data to complete exploratory data analysis. This can be creating a word cloud, analyzing the most popular genres/artists, or creating different charts. See SCRIPT/2.1EDA.ipynb and SCRIPT/2.2EDA.R for examples.
### Analysis: TF-IDF
Load in each cities' lyrics as a csv. Convert each cities' CSV to a text string. Create a list called "cities". Each item in "cities" should be the name of a given city. Create the list of "documents" to be analyzed. You can call this list "corpus". Each item in "corpus" should be a text string containing all of the lyrics for a given city. Filter certain words from the corpus for the analysis. To filter, use stop_words="english" as an argument to the TfidfVectorizer() function. This argument is a built-in list of English stop words that will be removed from the TF-IDF analysis. Stop words are common words (e.g., "the", "and", "is"). Additionally, manually remove probelmatic words. To do this, include another list of custom stop words like "lyrics" and "chorus" that were appearing within our analysis. Remove the custom list of words from the corpus. We chose to remove stop words because we found that stop words such as "is", "the" and "and" were appearing in almost all of the top 10 lists, taking away from our analysis.
After removing the stop words we used the TfidfVectorizer() function. Save the output as "vectorizer". Apply the fit_transform() to the corpus, as shown below.

vectorizer = TfidfVectorizer(stop_words="english")
X = vectorizer.fit_transform(corpus)

Convert the output to a dataframe.
tfidf_df = pd.DataFrame(X.toarray(), index=cities, columns=vectorizer.get_feature_names_out())

Use a "for" loop to print the top ten highest TF-IDF values and words for each of the cities. Compare and analyze the results.
