# Problem 9: Special Pythagorean triplet
# Answer: 31875000
# Solved by iterative approach

perimeter <- 1000
answer_found <- FALSE #Once answer is found, we will break the nested loop for efficiency
for (a in 1:perimeter) {
  for (b in (a+1):perimeter){
    c = perimeter - (a+b)
    if (a^2+b^2==c^2) { #If found the Pythagorean triplets,
      answer <- a*b*c #then set up the answer
      answer_found <- TRUE #and declare solution found to break loops
    }
    if (answer_found) {break}
  }
  if (answer_found) {break}
}
print(answer)