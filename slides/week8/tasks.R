## Task 1  
Find all characters with `ee` in the starwars dataset using quantifiers.   

```{r}
grep("e{2}", starwars$name, value = TRUE)
```

## Task 2 
Find all `.txt` files in your working directory   

```{r }
files <- list.files(wdir)
grep("\\.txt", files, value = TRUE)
```

## Task 3

Find countries in the Gapminder data with letter `i` or `t`, and ends with `land`, and replace `land` with `LAND` using backreference.  


```{r ex_operator, echo = F}
countries <- gsub("(.*[it].*)land$", "\\1LAND", levels(gDat$country), ignore.case = T)
grep("LAND", countries, value = TRUE)
```

## Task 5

Find continents in Gapminder with letter `o` in it.  

## Task 5 solution

Find continents in Gapminder with letter `o` in it.  

```{r ex_case, echo=F}
grep("o", levels(gDat$continent), ignore.case = TRUE, value = TRUE)
```