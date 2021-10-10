#Problem 7: 10001st prime
#Answer: 104743
#Solved by iterative approach

n <- 10001 #prime index to search
#base cases results
if (n==1) {answer = 2} else if (n == 2) {answer = 3} else {
  #Since 2 is the first and only even prime number, we can focus primality testing on odd numbers
  #3 is the second prime number and the first odd prime number
  odd_prime_numbers <- c(3)
  p <- 5 #first odd number for primality testing
  while (length(odd_prime_numbers) < n-1) { #-1 for excluding 2
    p_prime <- TRUE #assume current number is prime
    for (q in odd_prime_numbers) { #check with existing prime numbers
      if (p%%q==0) { #if divisible, then p is not prime
        p_prime <- FALSE
        break
        }
      if (q > floor(sqrt(p))) {break}
      }
    #if p is prime, then add p to the list
    if (p_prime) {odd_prime_numbers <- c(odd_prime_numbers,p)}
    # +2 because we only consider odd numbers
    p <- p+2
    }
  # answer for nth prime (n>2) is the last element of odd_prime_numbers
  answer <- tail(odd_prime_numbers,1)
  }
print(answer)