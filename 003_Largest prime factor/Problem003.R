#Problem 3: Largest prime factor
#Answer: 6857
#Solved using well-established primality testing rules

number <- 600851475143
prime_factors <- c()

#2 is the only even prime number, thus we first divide the number by 2 until the number becomes odd
if (number%%2==0) {
  prime_factors <- c(2) #add 2 as prime number
  while (number%%2==0) {
    number <- number/2
  }
}
upper_search <- floor(sqrt(number))#limit the prime factorization by capping the search to sqrt of number
p <- 3 #the first odd prime number. p is variable for prime factor
while (p <= upper_search) {
  if (number%%p==0){ #If current prime factor divides,
    prime_factors <- c(prime_factors,p) #then include p as a prime factor
    while (number%%p==0) { #and divide current number until no longer divisible
      number <- number/p
    }
  }
  #If number reduces to 1 after the division process, then we have completed prime factorization of the number
  #Else continue by checking with the next odd number
  if (number==1) {break} else {p <- p+2}
}
print(tail(prime_factors,1))