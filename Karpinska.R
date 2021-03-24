  # zadanie 1

t1 <- "TERYT 18; podkarpackie; Rzeszów; 0.2 He; A"
t2 <- "TERYT 22; pomorskie;   Gdańsk; 12 C ; B"

library(stringr)

str_sub(t1, start = -5, end = -4)
str_sub(t2, start = -5, end = -4)


  # zadanie 2

horoskop <- function(imie, miesiac){
  if (miesiac %% 2 == 0) {
    paste("Osoba o imieniu", imie, "bedzie miala jutro szczescie")
  } else {
    paste("Osoba o imieniu", imie, "bedzie miala jutro nieszczescie")
  }
}

horoskop("Sara", 8)
horoskop("Malgosia", 7)


  # zadanie 3

horoskop <- function(imie, miesiac){
  if (str_detect(imie, pattern = "^K|M|Z")){
    paste("Osoba o imieniu", imie, "bedzie miala jutro szczescie")
  } else if (miesiac %% 2 == 0){
    paste("Osoba o imieniu", imie, "bedzie miala jutro szczescie")
  } else {
    paste("Osoba o imieniu", imie, "bedzie miala jutro nieszczescie")
  }
}

horoskop("Sara", 8)
horoskop("Malgosia", 7)
horoskop("Rafal", 3)


  # zadanie 4


pomiary <- "2019-03-11: 23.5, 19/03/12: 12.7, 2019.03.13: 11.1, 2019-marzec-14: 14.3"

pomiary <- str_replace_all(pomiary, pattern = "[\\/]", replacement = "\\-")

str_extract_all(pomiary, pattern = "[0-9]+[\\-][a-z0-9]+[\\-][0-9]*")


  # zadanie 5

wartosci <- str_extract_all(pomiary, pattern = "[0-9]+[\\.][0-9]")









