# Problem 4: Largest palindrome product
# Answer: 906609
# Solved by iterative approach

library(stringi) #import "stringi" library to utilize string operators

answer <- 0 #current answer
for (i in 100:999) { #i values are three-digit numbers
  for (j in 100:999) { #j values are three-digit numbers
    product <- i*j
    #If the product is a palindrome and is greater than the current answer
    #then update the answer to the current product result
    if (product == stri_reverse(product) && product > answer){
      answer <- product
    }
  }
}
print(answer)