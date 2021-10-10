# Problem 10: Summation of primes
# Answer: 142913828922
# Solved using algorithm used in Problem 007 with different conditioning

number <- 2e6

if (number < 2) {answer = 0} else if (number == 2) {answer = 2} else {
  #Since 2 is the first and only even prime number, we can focus primality testing on odd numbers
  #3 is the second prime number and the first odd prime number
  odd_prime_numbers <- c(3)
  p <- 5 #first odd number for primality testing
  while (p < number) { 
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
  answer <- sum(odd_prime_numbers)+2
}
print(answer)