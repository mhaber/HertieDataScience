
# Libraries ---------------------------------------------------------------
library(rvest) # for scraping
library(reshape2) # to turn list into data.frame object

url <- read_html(paste0("http://www.bund.de/Content/DE/Stellen/Suche/Formular.",
"html?nn=4642046&view=processForm&resultsPerPage=100"))


# Get number of pages to navigate through ---------------------------------
pages <- rvest::html_nodes(url, ".item-m p") %>%
  html_text(trim = T) %>% 
  .[1] %>% 
  gsub("1 von ", "", .) %>% 
  as.numeric(.)
  


# Extract all urls --------------------------------------------------------
urls <- list()

for(i in rep(1:pages)){
  # progress
  cat('Processing page', i, 'of', length(rep(1:pages)),'\n')
  
  urls[[i]] <- read_html(paste0("http://www.bund.de/Content/DE/Stellen/",
"Suche/Formular.html?nn=4642046&gtp=4642266_list%253D",i,
"&view=processForm&resultsPerPage=100")) %>%
    html_nodes(., ".result-list li") %>% 
    html_nodes(xpath = "./a") %>% 
    html_attr("href") %>% 
    gsub("IMPORTE", "www.bund.de/IMPORTE", .)
  }


# Extract Content ---------------------------------------------------------
jobs <- list()

for(i in 1:length(urls)) {
  
  # progress
  cat('Processing page', i, 'of', length(urls),'\n')
  
  for(j in 1:length(urls[[i]])) {

    # progress
    cat('Processing url', j, 'of', length(urls[[i]]),'\n')
    
    # key info
    fields <- html_session(urls[[i]][j]) %>% 
      jump_to("") %>% 
      html_nodes(., "dt") %>% 
      html_text(trim = T)
    
    content <- html_session(urls[[i]][j]) %>% 
      jump_to("") %>% 
      html_nodes(., "dd") %>% 
      html_text(trim = T) %>% 
      gsub("\n", " ", .) %>% 
      gsub("\t", "", .) %>% 
      gsub("Karte anschauen", "",.) %>% 
      gsub("  ", "",.)
    
    df <- data.frame(t(content), stringsAsFactors = F)
    names(df) <- fields
    
    # Jobtitle
    title <- html_session(urls[[i]][j]) %>% 
      jump_to("") %>% 
      html_nodes(., "img+ h1") %>%
      html_text(trim = T)
    ifelse(identical(title, character(0)), 
           title <- html_session(urls[[i]][j]) %>% 
             jump_to("") %>% 
             html_nodes(., "a+ h1") %>%
             html_text(trim = T) %>% 
             gsub("\n", "",.),
           title)
    
    df$title <- title
    
    # job description
    description <- html_session(urls[[i]][j]) %>% 
      jump_to("") %>% 
      html_nodes(., ".text section p") %>% 
      html_text(trim = T) %>% 
      gsub("\t", "", .) %>% 
      paste(., collapse = "\n")
    
    df$description <- description
    
    # add df to biglist
    jobs[[urls[[i]][j]]] <- df

  }
}


# Convert list into data.frame --------------------------------------------
jobsDf <- melt(jobs)


# Save as csv -------------------------------------------------------------
write.csv(jobsDf, file = "jobsBund.csv")
