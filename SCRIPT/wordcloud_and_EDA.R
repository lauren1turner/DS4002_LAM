LA = read.csv("C:/Users/Student/OneDrive/Desktop/prototyping/lyrics/LA_clean.csv")
NYC = read.csv("C:/Users/Student/OneDrive/Desktop/prototyping/lyrics/NYC_clean.csv")
DC = read.csv("C:/Users/Student/OneDrive/Desktop/prototyping/lyrics/DC_clean.csv")
Atl = read.csv("C:/Users/Student/OneDrive/Desktop/prototyping/lyrics/atlanta_clean.csv")
Chi = read.csv("C:/Users/Student/OneDrive/Desktop/prototyping/lyrics/chicago_clean.csv")
Mia = read.csv("C:/Users/Student/OneDrive/Desktop/prototyping/lyrics/miami_clean.csv")
Hou = read.csv("C:/Users/Student/OneDrive/Desktop/prototyping/lyrics/houston_clean.csv")


dataframes <- list(
  LA = LA,
  NYC = NYC,
  DC = DC,
  Atl = Atl,
  Chi = Chi,
  Mia = Mia,
  Hou = Hou
)

# Combine all dataframes into one big dataframe
big_dataframe <- do.call(rbind, dataframes)

# Install necessary packages if not already installed
install.packages("tm")        # For text mining
install.packages("wordcloud") # For generating the word cloud

# Load libraries
library(tm)
library(wordcloud)
library(RColorBrewer) # For color palettes

# Specify the column name containing text data
text_data <- big_dataframe$YourColumnName  # Replace with your actual column name

# Combine all text into a single corpus
text_corpus <- Corpus(VectorSource(text_data))

# Clean the text data
text_corpus <- tm_map(text_corpus, content_transformer(tolower))  # Convert to lowercase
text_corpus <- tm_map(text_corpus, removePunctuation)             # Remove punctuation
text_corpus <- tm_map(text_corpus, removeNumbers)                 # Remove numbers
text_corpus <- tm_map(text_corpus, removeWords, stopwords("en"))  # Remove common stopwords

# Define a list of curse words to remove
curse_words <- c(
  "damn", "hell", "shit", "fuck", "bitch", "bastard", "asshole", 
  "dick", "piss", "crap", "prick", "slut", "whore", "cunt", "motherfucker",
  "fucker", "ass", "bullshit", "dumbass", "nigga","jackass"
)

# Remove custom curse words
text_corpus <- tm_map(text_corpus, removeWords, curse_words)

# Remove extra whitespace
text_corpus <- tm_map(text_corpus, stripWhitespace)

# Convert corpus to a term-document matrix
tdm <- TermDocumentMatrix(text_corpus)

# Convert to matrix and get word frequencies
word_freq <- as.matrix(tdm)
word_freq <- sort(rowSums(word_freq), decreasing = TRUE)

# Convert to dataframe for visualization
word_freq_df <- data.frame(word = names(word_freq), freq = word_freq)

# Generate the word cloud
wordcloud(words = word_freq_df$word, freq = word_freq_df$freq, 
          min.freq = 2,           # Minimum frequency to be included
          max.words = 100,        # Maximum number of words
          random.order = FALSE,   # Arrange words by frequency
          colors = brewer.pal(8, "Dark2"))  # Choose a color palette

