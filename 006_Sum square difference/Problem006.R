# Problem 6: Sum square difference
# Answer: 25164150
# Solved using R operators

numbers <- seq(1,100)
sum_of_squares <- sum(numbers^2)
square_of_sum <- sum(numbers)^2
answer <- square_of_sum - sum_of_squares
print(answer)