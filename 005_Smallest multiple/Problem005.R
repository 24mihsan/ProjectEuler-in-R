# Problem 5: Smallest multiple
# Answer: 232792560
# Solved by iterative approach

library(pracma)
upper_limit <- 20
answer <- 1
for (n in 1:upper_limit) {
  answer <- answer*(n/pracma::gcd(n,answer))
}
print(answer)