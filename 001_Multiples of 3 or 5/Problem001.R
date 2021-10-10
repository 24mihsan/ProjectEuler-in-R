#Problem 1: Multiples of 3 or 5
#Answer: 233168
#Solved by iterative approach

answer <- 0
for (n in 1:1000) {
  if (n%%3==0 | n%%5==0) {
  answer <- answer + n
  }
}
print(answer)