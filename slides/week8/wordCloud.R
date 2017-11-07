
# Creating a Wordcloud with quanteda --------------------------------------

# You start from a data.frame called "df" which has one column "DOC" containing
# the names or ids of your documents/texts and one column "TEXT" containing the
# actual text

# Load the packages -------------------------------------------------------
library(quanteda) # install.packages("quanteda")

# Create a document frequency matrix from a data frame --------------------

myDfm <- quanteda::dfm(corpus(df, docid_field = "DOC", text_field = "TEXT"),
                       remove = stopwords("english"), # removes stop words (i.e "and")
                       remove_punct = TRUE,  # removes punctuation (".",":",",")
                       remove_numbers =TRUE) # removes numbers (1,2,3,...)

quanteda::textplot_wordcloud(df,
                             min.freq = 3, # words with frequency below min.freq will not be plotted
                             random.order = FALSE, # plot words in random order
                             rot.per = .25, #proportion words with 90 degree rotation
                             colors = RColorBrewer::brewer.pal(8,"Dark2")) # set the color