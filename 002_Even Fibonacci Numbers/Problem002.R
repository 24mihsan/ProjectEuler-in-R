# Problem 2: Even Fibonacci numbers
# Answer: 4613732
# Solved by iterative approach

fib_seq <- c(1,2) #First terms of the sequence
answer <- 2 #Current sum from existing sequence
current_term <- 1+2 #Next term
while (current_term<=4e6) {
  #If current term is even, then add the term to the current sum
  if (current_term%%2 == 0) {
    answer <- answer + current_term
  }
  fib_seq <- c(fib_seq,current_term) #Add current term in sequence
  current_term <- sum(tail(fib_seq),2) #Next term is the sum of the last two elements of sequence
}
print(answer)