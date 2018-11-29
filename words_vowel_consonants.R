# words vowels consonants table for makefile
words <- readLines("words.txt")

vowels = stringr::str_count(words, "[aeiou]") # find vowels
consonants = stringr::str_count(words, "[^aeiou]") # find consonants

count_vowels <- table(vowels) # how many words with 1,2,3,... etc. vowels
count_consonants <- table(consonants) # how many words with 1,2,3,... etc. consonants

write.table(count_vowels, "words_vowels.tsv",
						sep = "\t", row.names = FALSE, quote = FALSE)

write.table(count_consonants, "words_consonants.tsv",
						sep = "\t", row.names = FALSE, quote = FALSE)